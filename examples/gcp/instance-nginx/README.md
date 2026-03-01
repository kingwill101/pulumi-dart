# Instance NGINX (Dart)

This example provisions two Compute Engine VMs:

- One VM installs and runs NGINX via startup script.
- One VM runs an NGINX container on Container-Optimized OS.

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

- `instance_name`
- `instance_external_ip`
- `container_instance_name`
- `container_instance_external_ip`

## Cleanup

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
