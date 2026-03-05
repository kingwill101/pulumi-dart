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

## Run

From this directory:

```bash
pulumi policy validate --policy-pack .
```

To publish:

```bash
pulumi policy publish --policy-pack .
```
