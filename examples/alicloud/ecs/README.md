# Instance Using AliCloud ECS (Dart)

This Dart example ports `thirdparty/pulumi_examples/alicloud-ts-ecs/`.

## Prerequisites

- Pulumi CLI installed
- AliCloud credentials configured for the Pulumi AliCloud provider

## Configure

```bash
pulumi config set alicloud:region us-east-1
```

## Deploy

```bash
pulumi up
```

## Output

- `publicIp`

## Destroy

```bash
pulumi destroy --yes
```
