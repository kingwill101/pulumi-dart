# Terraform Local State Reference (Dart)

This Dart-first example uses `pulumi_terraform` invoke functions to read outputs from a local Terraform state file.

## What this example does

- Calls `terraform.state.getLocalReference`
- Reads outputs from `terraform.tfstate`
- Exports those outputs via Pulumi stack outputs

## Default state file

This example includes a sample local state file:

- `terraform.tfstate`

## Optional stack config

Override the default path:

```bash
pulumi config set statePath ./terraform.tfstate
```

## Deploy

```bash
pulumi up
```

## Outputs

- `statePath`
- `terraformOutputs`

## Destroy

```bash
pulumi destroy --yes
```
