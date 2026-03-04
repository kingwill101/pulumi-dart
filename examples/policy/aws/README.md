# AWS Policy Pack (Dart)

This example is a Dart port of `policy-packs/aws-ts` from
`thirdparty/pulumi_examples/policy-packs/aws-ts/`.

It defines four AWS policies:

- advisory for EC2 public IP association
- mandatory `Name` tag on EC2 instances and VPCs
- mandatory ban on `0.0.0.0/0` ingress in security groups
- mandatory ban on Elastic Beanstalk resources

## Run

From this directory, use Pulumi Policy CLI commands:

```bash
pulumi policy validate --policy-pack .
```

To publish the pack:

```bash
pulumi policy publish --policy-pack .
```
