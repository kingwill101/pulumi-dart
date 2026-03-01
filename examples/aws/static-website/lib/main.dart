import 'dart:convert';
import 'dart:io';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class StaticWebsiteStack extends pulumi.Stack {
  late final pulumi.Output<String> contentBucketUri;
  late final pulumi.Output<String> contentBucketWebsiteEndpoint;
  late final pulumi.Output<String> targetDomainEndpoint;

  StaticWebsiteStack() {
    final config = pulumi.Config();
    final pathToWebsiteContents =
        config.get('pathToWebsiteContents') ?? './www';

    final contentBucket = aws.s3.Bucket(
      'content-bucket',
      args: aws.s3.BucketArgs(forceDestroy: true),
    );

    aws.s3.BucketPublicAccessBlock(
      'content-bucket-public-access',
      args: aws.s3.BucketPublicAccessBlockArgs(
        bucket: contentBucket.bucket,
        blockPublicAcls: false,
        blockPublicPolicy: false,
        ignorePublicAcls: false,
        restrictPublicBuckets: false,
      ),
    );

    final bucketPolicyJson = contentBucket.arn.apply(
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
    );

    aws.s3.BucketPolicy(
      'content-bucket-policy',
      args: aws.s3.BucketPolicyArgs(
        bucket: contentBucket.bucket,
        policy: bucketPolicyJson,
      ),
    );

    final website = aws.s3.BucketWebsiteConfiguration(
      'content-bucket-website',
      args: aws.s3.BucketWebsiteConfigurationArgs(
        bucket: contentBucket.bucket,
        indexDocument: aws.s3.BucketWebsiteConfigurationIndexDocument(
          suffix: 'index.html',
        ),
        errorDocument: aws.s3.BucketWebsiteConfigurationErrorDocument(
          key: '404.html',
        ),
      ),
    );

    final rootDir = Directory(pathToWebsiteContents).absolute.path;
    final rootDirNormalized = _normalize(rootDir);

    final files = Directory(pathToWebsiteContents)
        .listSync(recursive: true, followLinks: false)
        .whereType<File>()
        .toList();

    for (var i = 0; i < files.length; i++) {
      final file = files[i];
      final absolute = _normalize(file.absolute.path);
      final relative = absolute.startsWith('$rootDirNormalized/')
          ? absolute.substring(rootDirNormalized.length + 1)
          : absolute.split('/').last;

      aws.s3.BucketObject(
        'content-file-$i',
        args: aws.s3.BucketObjectArgs(
          bucket: contentBucket.bucket,
          key: relative,
          source: pulumi.FileAsset(file.path),
        ),
      );
    }

    contentBucketUri = contentBucket.bucket.apply((bucket) => 's3://$bucket');
    contentBucketWebsiteEndpoint = website.websiteEndpoint;
    targetDomainEndpoint = website.websiteEndpoint.apply(
      (endpoint) => 'http://$endpoint',
    );
  }

  String _normalize(String path) => path.replaceAll('\\', '/');

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('contentBucketUri', contentBucketUri),
      pulumi.OutputProperty(
        'contentBucketWebsiteEndpoint',
        contentBucketWebsiteEndpoint,
      ),
      pulumi.OutputProperty('targetDomainEndpoint', targetDomainEndpoint),
    ];
  }
}
