import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class NextJsStack extends pulumi.Stack {
  late final pulumi.Output<String> url;

  NextJsStack() {
    final siteBucket = aws.s3.Bucket(
      'site-bucket',
      args: aws.s3.BucketArgs(forceDestroy: true.input()),
    );

    aws.s3.BucketPublicAccessBlock(
      'site-bucket-public-access',
      args: aws.s3.BucketPublicAccessBlockArgs(
        bucket: siteBucket.id,
        blockPublicAcls: false.input(),
        blockPublicPolicy: false.input(),
        ignorePublicAcls: false.input(),
        restrictPublicBuckets: false.input(),
      ),
    );

    final website = aws.s3.BucketWebsiteConfigurationV2(
      'site-website',
      args: aws.s3.BucketWebsiteConfigurationV2Args(
        bucket: siteBucket.id,
        indexDocument: aws.s3
            .BucketWebsiteConfigurationV2IndexDocument(
              suffix: 'index.html'.input(),
            )
            .input(),
        errorDocument: aws.s3
            .BucketWebsiteConfigurationV2ErrorDocument(
              key: 'index.html'.input(),
            )
            .input(),
      ),
    );

    aws.s3.BucketPolicy(
      'site-bucket-policy',
      args: aws.s3.BucketPolicyArgs(
        bucket: siteBucket.id,
        policy: siteBucket.arn.apply(
          (arn) => jsonEncode({
            'Version': '2012-10-17',
            'Statement': [
              {
                'Sid': 'PublicReadGetObject',
                'Effect': 'Allow',
                'Principal': '*',
                'Action': ['s3:GetObject'],
                'Resource': ['$arn/*'],
              },
            ],
          }),
        ),
      ),
    );

    aws.s3.BucketObject(
      'site-index',
      args: aws.s3.BucketObjectArgs(
        bucket: siteBucket.id,
        key: 'index.html'.input(),
        contentType: 'text/html; charset=utf-8'.input(),
        content:
            '''
<!doctype html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Next.js on AWS (Dart baseline)</title>
  </head>
  <body style="font-family: ui-sans-serif, system-ui; margin: 40px">
    <h1>Next.js on AWS (Dart baseline)</h1>
    <p>This example currently provisions static S3 website hosting from Dart.</p>
    <p>For full OpenNext parity, add CloudFront + Lambda origins as a follow-up.</p>
  </body>
</html>
'''
                .input(),
      ),
    );

    url = website.websiteEndpoint.apply((e) => 'http://$e');
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('url', url)];
  }
}
