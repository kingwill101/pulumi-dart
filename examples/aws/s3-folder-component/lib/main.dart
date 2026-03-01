import 'dart:convert';
import 'dart:io';

import 'package:mime/mime.dart';
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class S3Folder extends pulumi.ComponentResource {
  late final pulumi.Output<String> bucketName;
  late final pulumi.Output<String> websiteUrl;

  S3Folder(String name, String siteDir)
    : super(
        'pulumi:example:S3Folder',
        name,
        const {},
        pulumi.ComponentResourceOptions(),
      ) {
    final siteBucket = aws.s3.Bucket(
      name,
      options: pulumi.CustomResourceOptions(parent: this),
    );

    final siteWebsite = aws.s3.BucketWebsiteConfiguration(
      's3-website',
      args: aws.s3.BucketWebsiteConfigurationArgs(
        bucket: siteBucket.bucket,
        indexDocument: aws.s3
            .BucketWebsiteConfigurationIndexDocument(
              suffix: 'index.html'.input(),
            )
            .input(),
      ),
      options: pulumi.CustomResourceOptions(parent: this),
    );

    final rootDir = Directory(siteDir).absolute.path;
    for (final entity in Directory(siteDir).listSync(recursive: true)) {
      if (entity is! File) {
        continue;
      }

      final fullPath = entity.absolute.path;
      var relativePath = fullPath.substring(rootDir.length);
      if (relativePath.startsWith(Platform.pathSeparator)) {
        relativePath = relativePath.substring(1);
      }
      final objectKey = relativePath.replaceAll(r'\\', '/');
      final contentType = lookupMimeType(fullPath);

      aws.s3.BucketObject(
        objectKey,
        args: aws.s3.BucketObjectArgs(
          bucket: siteBucket.bucket,
          source: pulumi.Asset.fromPath(fullPath).input(),
          contentType: contentType == null ? null : contentType.input(),
        ),
        options: pulumi.CustomResourceOptions(parent: this),
      );
    }

    final accessBlock = aws.s3.BucketPublicAccessBlock(
      'public-access-block',
      args: aws.s3.BucketPublicAccessBlockArgs(
        bucket: siteBucket.bucket,
        blockPublicAcls: false.input(),
      ),
      options: pulumi.CustomResourceOptions(parent: this),
    );

    final policy = siteBucket.arn.apply<String>(
      (arn) => jsonEncode({
        'Version': '2012-10-17',
        'Statement': [
          {
            'Effect': 'Allow',
            'Principal': '*',
            'Action': ['s3:GetObject'],
            'Resource': ['$arn/*'],
          },
        ],
      }),
    );

    aws.s3.BucketPolicy(
      'bucketPolicy',
      args: aws.s3.BucketPolicyArgs(bucket: siteBucket.bucket, policy: policy),
      options: pulumi.CustomResourceOptions(
        parent: this,
        dependsOn: [accessBlock],
      ),
    );

    bucketName = siteBucket.bucket;
    websiteUrl = siteWebsite.websiteEndpoint;

    registerOutputs({'bucketName': bucketName, 'websiteUrl': websiteUrl});
  }
}

class ExampleStack extends pulumi.Stack {
  late final pulumi.Output<String> bucketName;
  late final pulumi.Output<String> websiteUrl;

  ExampleStack() {
    final folder = S3Folder('pulumi-static-site', './www');
    bucketName = folder.bucketName;
    websiteUrl = folder.websiteUrl;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('bucketName', bucketName),
      pulumi.OutputProperty('websiteUrl', websiteUrl),
    ];
  }
}
