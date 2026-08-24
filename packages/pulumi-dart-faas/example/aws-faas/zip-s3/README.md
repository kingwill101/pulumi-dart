# AWS FaaS: Zip from S3

Deploys a Dart Lambda function from a prebuilt zip artifact in S3.

## Build and upload artifact

From this directory:

```bash
cd app
dart compile exe bootstrap.dart -o bootstrap
zip function.zip bootstrap
aws s3 cp function.zip s3://<bucket>/<key>
```

Optional source hash:

```bash
openssl dgst -sha256 -binary app/function.zip | openssl base64
```

## Deploy

```bash
pulumi stack init dev
pulumi config set aws:region us-east-1
pulumi config set artifactBucket <bucket>
pulumi config set artifactKey <key>
pulumi up
```
