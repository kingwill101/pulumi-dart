# Next.js on AWS (Dart baseline)

This Dart translation provides a runnable baseline for the Next.js example:

- S3 static website bucket
- Public website policy
- `index.html` object
- `url` output

The TypeScript source uses an OpenNext-style component with CloudFront + Lambda origins. That full architecture is not yet ported in this Dart version.

## Deploy

```bash
dart pub get
pulumi stack init dev
pulumi config set aws:region us-west-2
pulumi up
```

## Clean up

```bash
pulumi destroy
pulumi stack rm
```
