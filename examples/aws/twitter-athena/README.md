# Twitter Search in Athena (Dart)

This Dart translation provisions the core infrastructure:

- S3 bucket for tweet output
- Scheduled CloudWatch rule invoking a Lambda
- Athena database and named queries
- Outputs for bucket and query URLs

The Lambda handler is intentionally a stub in this version. It logs execution and environment context; you can add Twitter API fetch + S3 upload logic in `lambda/fetch-tweets/index.js`.

## Deploy

```bash
dart pub get
pulumi stack init twitter-athena
pulumi config set aws:region us-west-2
pulumi config set aws-dart-twitter-athena:twitterAccessTokenKey <value>
pulumi config set --secret aws-dart-twitter-athena:twitterAccessTokenSecret <value>
pulumi config set aws-dart-twitter-athena:twitterConsumerKey <value>
pulumi config set --secret aws-dart-twitter-athena:twitterConsumerSecret <value>
pulumi config set aws-dart-twitter-athena:twitterQuery "Amazon Web Services"
pulumi up
```

## Outputs

- `bucketName`
- `athenaDatabase`
- `createTableQueryUri`
- `topUsersQueryUri`

Run `createTableQueryUri` first, then `topUsersQueryUri` in Athena.

## Clean up

```bash
pulumi destroy
pulumi stack rm
```
