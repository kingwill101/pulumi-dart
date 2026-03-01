# Video Thumbnailer Using AWS Lambda (Dart)

Uploads `.mp4` files to S3, triggers a container-based Lambda to generate `.jpg` thumbnails, and logs thumbnail events via a second Lambda.

## Prerequisites

- Docker running locally (for image build/push)

## Deploy

```bash
dart pub get
pulumi up
```

## Destroy

```bash
aws s3 rm s3://$(pulumi stack output bucketName) --recursive
pulumi destroy
```
