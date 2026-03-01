# Google Cloud Run (Dart)

This example deploys two Cloud Run services:

- `hello` using `gcr.io/cloudrun/hello`
- `ruby` using a Docker image built and pushed with `pulumi_docker`

## Current status

- Pulumi runtime is Dart (`Pulumi.yaml`).
- Program entrypoint is `bin/main.dart`.
- Dart package metadata is present (`pubspec.yaml`).

## Prerequisites

1. Install [Pulumi CLI](https://www.pulumi.com/docs/get-started/install/).
2. Install Dart SDK 3.10+.
3. Install Docker.
4. Configure GCP auth and Docker auth:

   ```bash
   gcloud auth login
   gcloud auth application-default login
   gcloud auth configure-docker
   ```

## Configuration

- `gcp:project` (required)
- `gcp:region` (optional, defaults to `us-central1` in code)

## Run

```bash
dart pub get
pulumi stack init dev
pulumi config set gcp:project <YOUR_GCP_PROJECT>
pulumi config set gcp:region <YOUR_GCP_REGION>
pulumi up
```

## Stack outputs

- `helloUrl`
- `rubyUrl`

## Cleanup

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
