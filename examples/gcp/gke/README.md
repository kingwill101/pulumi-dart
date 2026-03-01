# GKE Canary Deployment (Dart)

This example provisions a Google Kubernetes Engine (GKE) cluster and deploys a simple canary `Deployment` to it.

## Current status

- Pulumi runtime is Dart (`Pulumi.yaml`).
- Program entrypoint is `bin/main.dart`.
- Dart package metadata is present (`pubspec.yaml`).

## Prerequisites

1. Install [Pulumi CLI](https://www.pulumi.com/docs/get-started/install/).
2. Install Dart SDK 3.10+.
3. Install and auth [Google Cloud SDK](https://cloud.google.com/sdk/docs/install):

   ```bash
   gcloud auth login
   gcloud auth application-default login
   ```

## Configuration

Required:

- `gcp:project`
- `gcp:zone`

Optional:

- `nodeCount` (default `3`)
- `nodeMachineType` (default `n1-standard-1`)
- `masterVersion` (auto-detected when unset)

Note: `Pulumi.yaml` still includes a legacy `password` template key from upstream metadata. The Dart program does not currently use it.

## Run

```bash
dart pub get
pulumi stack init dev
pulumi config set gcp:project <YOUR_GCP_PROJECT>
pulumi config set gcp:zone <YOUR_GCP_ZONE>
pulumi up
```

If `dart pub get` cannot resolve `pulumi_kubernetes` from pub.dev in your environment, use local overrides in `pubspec.yaml`:

```yaml
dependency_overrides:
  pulumi:
    path: ../../../../pulumi-dart
  pulumi_gcp:
    path: ../../../../packages/gcp
  pulumi_kubernetes:
    path: ../../../../packages/kubernetes
```

## Stack outputs

- `kubeConfig`
- `clusterName`
- `canaryName`

## Cleanup

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
