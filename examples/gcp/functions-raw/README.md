# Google Cloud Functions Raw (Dart)

This example packages local Python function code from `pythonfunc/` as an archive and deploys an HTTP-triggered Cloud Function.

## Current status

- Pulumi runtime is Dart (`Pulumi.yaml`).
- Program entrypoint is `bin/main.dart`.
- Dart package metadata is present (`pubspec.yaml`).

## Configuration

- `gcp:project` (recommended)
- `gcp:region` (recommended for provider defaults)

## Run

```bash
dart pub get
pulumi stack init dev
pulumi config set gcp:project <YOUR_GCP_PROJECT>
pulumi config set gcp:region <YOUR_GCP_REGION>
pulumi up
```

## Stack outputs

- `function`

## Cleanup

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
