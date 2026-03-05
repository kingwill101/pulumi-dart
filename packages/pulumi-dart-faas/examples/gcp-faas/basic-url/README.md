# GCP FaaS: Basic URL

Deploys a Dart Cloud Run service from an image source and returns the service URL.

## Deploy

```bash
pulumi stack init dev
pulumi config set gcp:project <your-project-id>
pulumi config set gcp:region us-central1
pulumi up
```

## Cleanup

```bash
pulumi destroy
pulumi stack rm
```
