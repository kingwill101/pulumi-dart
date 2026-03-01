# Video Thumbnailer Using AWS (Dart)

This Dart example sets up the S3 event pipeline for a thumbnailing workflow:

- S3 bucket for uploads
- Lambda triggered on `.mp4` uploads
- Lambda triggered on `.jpg` uploads
- `bucketName` output for quick testing

This translation keeps the event-driven flow but does not include the full ECS/FFMPEG task wiring yet.

## Prerequisites

- Pulumi CLI
- AWS credentials configured
- Dart SDK

## Run

```bash
dart pub get
pulumi stack init dev
pulumi config set aws:region us-west-2
pulumi up
```

Upload a test video object:

```bash
aws s3 cp ./sample/cat.mp4 s3://$(pulumi stack output bucketName)/cat_00-01.mp4
```

Stream logs:

```bash
pulumi logs -f
```

## Clean up

```bash
aws s3 rm s3://$(pulumi stack output bucketName) --recursive
pulumi destroy
pulumi stack rm
```
