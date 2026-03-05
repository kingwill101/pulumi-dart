# AWS FaaS: Basic URL

Deploys a Dart Lambda function from an image source and returns a Function URL.

## Deploy

```bash
pulumi stack init dev
pulumi config set aws:region us-east-1
pulumi up
```

## Cleanup

```bash
pulumi destroy
pulumi stack rm
```
