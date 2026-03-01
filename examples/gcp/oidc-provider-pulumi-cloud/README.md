# GCP OIDC Pulumi Program in Dart

This folder contains a Dart port of:

- `pulumi_examples/gcp-ts-oidc-provider-pulumi-cloud/`

It creates:

- GCP Workload Identity Pool and OIDC provider configuration
- GCP service account configured for OIDC workload identity
- Pulumi ESC environment configured for `gcp-login` using OIDC

## Source and porting notes

- Upstream example reference: `pulumi_examples/gcp-ts-oidc-provider-pulumi-cloud`
- Keep the Dart translation in code as a direct port of `index.ts` resources and config semantics.

## Run

```bash
dart pub get
pulumi up
```

## Destroy

```bash
pulumi destroy
pulumi stack rm
```

## Required config

```bash
pulumi config set gcp:project <your-gcp-project>
pulumi config set escEnvOrg <pulumi-org> # defaults to current Pulumi org
pulumi config set escEnvProject gcloud
pulumi config set escEnvName <esc-env-name> # defaults to <gcp-project>-admin
```
