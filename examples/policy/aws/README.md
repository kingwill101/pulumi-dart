# AWS Policy Pack (Dart)

This example is a Dart port of `policy-packs/aws-ts` from
`thirdparty/pulumi_examples/policy-packs/aws-ts/`.

It defines four AWS policies:

- advisory for EC2 public IP association
- mandatory `Name` tag on EC2 instances and VPCs
- mandatory ban on `0.0.0.0/0` ingress in security groups
- mandatory ban on Elastic Beanstalk resources

## Run against a stack

Policy packs are evaluated from a **target stack**.

Example end-to-end (from repository root):

```bash
export PULUMI_CONFIG_PASSPHRASE=banana

cd examples/aws/webserver
pulumi stack select dev --create

pulumi preview --policy-pack ../../policy/aws --show-policy-remediations
pulumi up --policy-pack ../../policy/aws
```

## Publish

From this directory:

```bash
pulumi policy publish <org-name>
```
