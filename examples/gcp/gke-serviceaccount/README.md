# GKE + Service Account (Dart)

This example provisions a GKE cluster and deploys a sample app that mounts a generated GCP service account key as a Kubernetes secret.

## Current status

- Pulumi runtime is Dart (`Pulumi.yaml`).
- Program entrypoint is `bin/main.dart`.
- Main stack logic lives in `lib/main.dart`.

## Resources created

- GCP service account + key
- Project IAM binding (`roles/pubsub.subscriber`)
- GKE cluster + managed node pool
- Kubernetes namespace, secret, and deployment

## Configuration

Required:

- `gcp:project`
- `gcp:zone`

Optional:

- `name` (default `gke-serviceaccount-example`)
- `machineType` (default `n1-standard-1`)

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

- `clusterName`
- `kubeconfig`

## Cleanup

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
