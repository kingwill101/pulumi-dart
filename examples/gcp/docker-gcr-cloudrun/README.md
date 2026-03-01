# Docker Build and Deploy to Google Cloud Run (Dart)

This example follows the `gcp-ts-docker-gcr-cloudrun` pattern in two Dart stacks:

- `docker-build-push-gcr` builds and pushes the Ruby image to Google Container Registry.
- `cloud-run-deploy` reads the image from GCR and deploys it to Google Cloud Run.

## Prerequisites

1. Install the Pulumi CLI.
2. Install Dart 3.10+.
3. Install Docker.
4. Configure Docker auth for GCP Container Registry:
   - `gcloud auth login`
   - `gcloud auth application-default login`
   - `gcloud auth configure-docker`
5. Enable Docker to pull from a GCR-backed service account with an auth config file.

## Build and push the Docker image

From this directory:

```bash
$ cd docker-build-push-gcr
$ dart pub get
$ pulumi stack init dev
$ pulumi config set gcp:project <YOUR_GCP_PROJECT>
$ pulumi up
```

Exports:

- `digest`

## Deploy to Cloud Run

From this directory:

```bash
$ cd cloud-run-deploy
$ dart pub get
$ pulumi stack init dev
$ pulumi config set gcp:project <YOUR_GCP_PROJECT>
$ pulumi config set gcp:region <YOUR_GCP_REGION>
$ pulumi config set docker-config-file <PATH_TO_~/.docker/config.json>
$ pulumi up
```

Optional config:

- `image-name` (default: `ruby-app`)

This program writes a public URL output:

- `rubyUrl`

You can verify with:

```bash
$ curl "$(pulumi stack output rubyUrl)"
```

## Cleanup

Run in each project after testing:

```bash
$ pulumi destroy --yes
$ pulumi stack rm --yes
```
