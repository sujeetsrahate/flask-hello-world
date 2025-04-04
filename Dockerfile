FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 to the outside world
EXPOSE 5000

# Set environment variables for Flask app
ENV FLASK_APP=main.py
ENV FLASK_ENV=production

# Run the Flask app when the container starts
CMD ["flask", "run", "--host=0.0.0.0"]

