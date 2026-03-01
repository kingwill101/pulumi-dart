# Static Website on S3 (Dart baseline)

This Dart example deploys a static website to Amazon S3 website hosting and uploads all files from a local directory.

It provisions:
- An S3 bucket (with `forceDestroy`)
- Public access block settings suitable for website hosting
- A bucket policy for public read of objects
- S3 website configuration (`index.html`, `404.html`)
- One `aws.s3.BucketObject` per file under `pathToWebsiteContents`

## Config

- `pathToWebsiteContents` (default: `./www`) - local directory to upload.

## Run

```bash
dart pub get
pulumi stack init dev
pulumi config set aws:region us-east-1
pulumi up
```

Outputs:
- `contentBucketUri`
- `contentBucketWebsiteEndpoint`
- `targetDomainEndpoint` (same as website endpoint in this baseline)
