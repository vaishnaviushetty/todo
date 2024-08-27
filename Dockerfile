# Use an official Python runtime as a parent image
FROM python:3

# Set the working directory in the container
WORKDIR /data

# Copy the current directory contents into the container at /data
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Run migrations
RUN python manage.py migrate

# Expose port 80 for the application
EXPOSE 8000

# Run app.py when the container launches
CMD ["python", "app.py"]
