# WordPress Helm Release (Dart)

This Dart example ports `thirdparty/pulumi_examples/kubernetes-ts-helm-release-wordpress/`.

It deploys Bitnami WordPress via `kubernetes:helm.sh/v3:Release`.

## Prerequisites

- Pulumi CLI installed
- Kubernetes cluster configured for Pulumi

## Deploy

```bash
pulumi up
```

## Outputs

- `serviceName`
- `portForwardCommand`

Run:

```bash
$(pulumi stack output portForwardCommand)
```

Then open `http://localhost:8080`.

## Note on parity

Upstream TypeScript reads the Service with `Service.get(...)` and exports
`frontendIp`. The generated Dart Kubernetes SDK currently does not expose that
resource lookup helper, so this port exposes a deterministic service name and
port-forward command instead.

## Destroy

```bash
pulumi destroy --yes
```
