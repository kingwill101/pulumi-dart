# EC2 Provisioners (Dart)

This example provisions an EC2 instance and then uses `pulumi_command` to copy and run remote commands over SSH.

## Required config

Provide either an existing AWS key pair name, or a public key:

```bash
pulumi config set keyName <existing-aws-keypair-name>
# or
pulumi config set publicKey "$(cat rsa.pub)"
```

Private key (PEM or base64 PEM):

```bash
pulumi config set --secret privateKey "$(cat rsa)"
```

## Deploy

```bash
dart pub get
pulumi up
```

## Destroy

```bash
pulumi destroy
```
