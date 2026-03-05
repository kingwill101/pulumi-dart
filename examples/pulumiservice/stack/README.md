# Pulumi Service Stack Resource (Dart)

This Dart-first example uses `pulumi_pulumiservice` to manage a Pulumi Cloud stack object.

## Prerequisites

- Pulumi Cloud access token configured for the provider

Example:

```bash
pulumi config set --secret pulumiservice:accessToken <pulumi-access-token>
```

## Required stack config

```bash
pulumi config set organizationName <pulumi-org>
pulumi config set projectName <project-name>
pulumi config set managedStackName <stack-name>
```

## Optional stack config

```bash
pulumi config set forceDestroy false
```

## Deploy

```bash
pulumi up
```

## Outputs

- `organizationName`
- `projectName`
- `stackName`
- `forceDestroy`

## Destroy

```bash
pulumi destroy --yes
```
