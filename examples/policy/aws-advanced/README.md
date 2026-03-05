# AWS Advanced Policy Pack (Dart)

This example is a Dart port of `policy-packs/aws-ts-advanced` from
`thirdparty/pulumi_examples/policy-packs/aws-ts-advanced/`.

It defines the same policy set as the upstream advanced AWS policy pack:

- approved AMIs by ID
- ASG ELB health check enforcement
- dedicated tenancy requirements
- instance type policy
- EBS optimization and detailed monitoring checks
- attached EBS volume checks
- EBS encryption checks
- ELB/ALB access logging checks

## Run against a stack

Policy packs are evaluated from a **target stack**:

```bash
cd <your-stack-project>
pulumi preview --policy-pack /absolute/path/to/examples/policy/aws-advanced
```

## Publish

From this directory:

```bash
pulumi policy publish <org-name>
```
