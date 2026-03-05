# WordPress Helm Chart (Dart)

This Dart example ports `thirdparty/pulumi_examples/kubernetes-ts-helm-wordpress/`.

It deploys Bitnami WordPress via `kubernetes:helm.sh/v3:Chart`.

## Prerequisites

- Pulumi CLI installed
- Kubernetes cluster configured for Pulumi

## Deploy

```bash
pulumi up
```

## Outputs

- `chartResources`

## Note on parity

Upstream TypeScript uses chart helper methods (`ready` and
`getResourceProperty(...)`) to fetch service status and export `wordpressIP`.
The generated Dart Kubernetes SDK currently does not expose those helper
methods on `helm_sh.Chart`, so this port exports chart resource metadata
instead.

## Destroy

```bash
pulumi destroy --yes
```
