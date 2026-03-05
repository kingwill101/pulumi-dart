import 'package:pulumi/pulumi.dart';
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class WebsiteDeployStack extends Stack {
  late final Output<Object?> websiteUrl;

  WebsiteDeployStack() : super() {
    final siteBucket = aws.s3.Bucket(
      's3-website-bucket',
      args: aws.s3.BucketArgs(
        website: Input.fromValue(
          aws.s3.BucketWebsite(indexDocument: Input.fromValue('index.html')),
        ),
      ),
    );

    final indexContent = '''
<html><head>
  <title>Hello S3</title><meta charset="UTF-8">
</head>
<body><p>Hello, world!</p><p>Made with Dart + Pulumi</p></body></html>
''';

    aws.s3.BucketObject(
      'index',
      args: aws.s3.BucketObjectArgs(
        bucket: siteBucket.id,
        content: Input.fromValue(indexContent),
        key: Input.fromValue('index.html'),
        contentType: Input.fromValue('text/html; charset=utf-8'),
      ),
    );

    final accessBlock = aws.s3.BucketPublicAccessBlock(
      'public-access-block',
      args: aws.s3.BucketPublicAccessBlockArgs(
        bucket: siteBucket.id,
        blockPublicAcls: Input.fromValue(false),
      ),
    );

    aws.s3.BucketPolicy(
      'bucketPolicy',
      args: aws.s3.BucketPolicyArgs(
        bucket: siteBucket.id,
        policy: siteBucket.id.apply((id) {
          return '''
{
  "Version": "2012-10-17",
  "Statement": [{
    "Effect": "Allow",
    "Principal": "*",
    "Action": ["s3:GetObject"],
    "Resource": ["arn:aws:s3:::$id/*"]
  }]
}
''';
        }),
      ),
      options: CustomResourceOptions(dependsOn: [accessBlock]),
    );

    websiteUrl = siteBucket.websiteEndpoint.apply<Object?>((v) => v);
  }

  @override
  List<OutputProperty> getOutputProperties() {
    return <OutputProperty>[OutputProperty('websiteUrl', websiteUrl)];
  }
}
