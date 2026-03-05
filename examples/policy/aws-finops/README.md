# AWS FinOps Policy Pack (Dart)

This example is a Dart port of `policy-packs/aws-ts-finops` from
`thirdparty/pulumi_examples/policy-packs/aws-ts-finops/`.

It keeps the same stack-driven policy selection:

- `dev`: stricter cost and efficiency checks
- `uat`: mixed mandatory/advisory checks
- `production`: savings-plan instance check (as in upstream source)

Included rule families:

- AWS provider region policy with configurable allowed regions
- EC2 tenancy/spot/instance-type/EBS type checks
- CloudWatch log retention checks
- RDS instance/storage/license checks
- S3 lifecycle and expiration checks
- NAT gateway count stack validation

## Run

From this directory:

```bash
pulumi policy validate --policy-pack .
```

To publish:

```bash
pulumi policy publish --policy-pack .
```
