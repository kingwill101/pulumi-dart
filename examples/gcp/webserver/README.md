# Webserver on Compute Engine (Dart)

This example provisions a network, firewall, and VM instance that serves `Hello, World!` over HTTP.

## Current status

- Pulumi runtime is Dart (`Pulumi.yaml`).
- Program entrypoint is `bin/main.dart`.
- Dart package metadata is present (`pubspec.yaml`).

## Configuration

- `gcp:project` (required)
- `gcp:zone` (optional, defaults to `us-central1-a` in `Pulumi.yaml`)

## Run

```bash
dart pub get
pulumi stack init dev
pulumi config set gcp:project <YOUR_GCP_PROJECT>
pulumi up
```

## Stack outputs

- `instanceName`
- `instanceIP`

## Cleanup

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
