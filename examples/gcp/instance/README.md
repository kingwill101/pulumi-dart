# GCP Instance (Dart)

This example provisions a single Compute Engine VM instance.

## Current status

- Pulumi runtime is Dart (`Pulumi.yaml`).
- Program entrypoint is `bin/main.dart`.
- Dart package metadata is present (`pubspec.yaml`).

## Configuration

- `gcp:project`
- `gcp:zone`

## Run

```bash
dart pub get
pulumi stack init dev
pulumi config set gcp:project <YOUR_GCP_PROJECT>
pulumi config set gcp:zone <YOUR_GCP_ZONE>
pulumi up
```

## Stack outputs

- `instanceName`

## Cleanup

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
