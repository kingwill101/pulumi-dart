# GKE Hello World (Dart)

This example provisions a GKE cluster, creates a Kubernetes namespace, deploys NGINX, and exposes it with a `LoadBalancer` service.

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

- `masterVersion` (auto-detected when unset)

Note: `Pulumi.yaml` still includes a legacy `gcp:credentials` template key from upstream metadata. The Dart program does not currently read it.

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

- `masterVersion`
- `clusterName`
- `kubeconfig`
- `namespaceName`
- `deploymentName`
- `serviceName`
- `servicePublicIP`

## Cleanup

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
