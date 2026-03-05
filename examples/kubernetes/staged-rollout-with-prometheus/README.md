# Kubernetes Staged Rollout with Prometheus (Dart)

This Dart example ports `thirdparty/pulumi_examples/kubernetes-ts-staged-rollout-with-prometheus/`.

It deploys:

- Prometheus via Helm release
- Canary `Deployment` for an instrumented app
- Staging `Deployment` for the same app

## Prerequisites

- Pulumi CLI installed
- Kubernetes cluster configured for Pulumi

## Configure

Optional annotation value for the staging gate:

```bash
pulumi config set p90ResponseTime 8221.236
```

If omitted, the example uses `not-checked-in-dart-port`.

## Deploy

```bash
pulumi up
```

## Outputs

- `p90ResponseTime`

## Notes

- This Dart port includes the staged deployment structure from upstream.
- The upstream local process gate (`kubectl port-forward` + live Prometheus latency polling) is not implemented in this port yet.
- The `p90ResponseTime` value is currently sourced from stack config and written as a deployment annotation.

## Destroy

```bash
pulumi destroy --yes
```
