# Stack Validation Policy Pack (Dart)

This example is a Dart port of `policy-packs/stackvalidation-ts` from
`thirdparty/pulumi_examples/policy-packs/stackvalidation-ts/`.

It demonstrates stack-wide checks:

- bucket region validation (uses provider-populated output)
- total S3 bucket count in the stack

Run from a target stack project:

```bash
cd <your-stack-project>
pulumi preview --policy-pack /absolute/path/to/examples/policy/stackvalidation
```
