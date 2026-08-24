# GCP FaaS: Binary Upload

Deploys a Dart Linux binary bundle using Pulumi GCP resources only.

## Deploy

```bash
pulumi stack init dev
pulumi config set gcp:project <your-project-id>
pulumi config set gcp:region us-central1
pulumi config set baseImageUri <your-cloud-run-base-image-uri>
pulumi up
```

## Notes

- The example uses `DartBuildArchive` from `pulumi_dart_faas`.
- `DartBuildArchive` wraps `command:local:Command` and exports an archive output.
- The archive output is passed directly into
  `DartFunctionSourceBinaryUploadArgs.sourceArchive`.

## Cleanup

```bash
pulumi destroy
pulumi stack rm
```
