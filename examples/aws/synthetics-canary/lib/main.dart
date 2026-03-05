import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/iam.dart' as iam;
import 'package:pulumi_aws/s3.dart' as s3;
import 'package:pulumi_aws/synthetics.dart' as synthetics;

class SyntheticsCanaryStack extends pulumi.Stack {
  late final pulumi.Output<String> simpleCanaryName;
  late final pulumi.Output<String> simpleCanaryArn;

  SyntheticsCanaryStack() {
    const baseName = 'canary';

    final canaryResultsS3Bucket = s3.Bucket(
      '$baseName-results',
      args: s3.BucketArgs(forceDestroy: true.input()),
    );

    final canaryExecutionRole = iam.Role(
      '$baseName-exec-role',
      args: iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Action': 'sts:AssumeRole',
              'Effect': 'Allow',
              'Principal': {'Service': 'lambda.amazonaws.com'},
            },
          ],
        }).input(),
      ),
    );

    iam.RolePolicy(
      '$baseName-exec-policy',
      args: iam.RolePolicyArgs(
        role: canaryExecutionRole.name,
        policy: canaryResultsS3Bucket.arn
            .apply<String>(_generateCanaryPolicy)
            .input(),
      ),
    );

    final canaryScriptsBucket = s3.Bucket('$baseName-scripts');

    s3.BucketVersioningV2(
      '$baseName-scripts-versioning',
      args: s3.BucketVersioningV2Args(
        bucket: canaryScriptsBucket.id,
        versioningConfiguration: s3.BucketVersioningV2VersioningConfiguration(
          status: 'Enabled'.input(),
        ).input(),
      ),
    );

    final canaryScriptObject = s3.BucketObjectv2(
      '$baseName-simple-canary',
      args: s3.BucketObjectv2Args(
        bucket: canaryScriptsBucket.id,
        source: pulumi.FileArchive('./canaries/simple-canary/').input(),
      ),
    );

    final canary = synthetics.Canary(
      '$baseName-simple',
      args: synthetics.CanaryArgs(
        artifactS3Location: canaryResultsS3Bucket.id.apply<String>(
          (id) => 's3://$id',
        ),
        executionRoleArn: canaryExecutionRole.arn,
        handler: 'exports.handler'.input(),
        runtimeVersion: 'syn-nodejs-puppeteer-3.5'.input(),
        schedule: synthetics.CanarySchedule(
          expression: 'rate(1 minute)'.input(),
        ).input(),
        s3Bucket: canaryScriptsBucket.id,
        s3Key: canaryScriptObject.id,
        s3Version: canaryScriptObject.versionId,
        startCanary: true.input(),
      ),
    );

    simpleCanaryName = canary.name;
    simpleCanaryArn = canary.arn;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('simpleCanaryName', simpleCanaryName),
      pulumi.OutputProperty('simpleCanaryArn', simpleCanaryArn),
    ];
  }
}

String _generateCanaryPolicy(String canaryResultsBucketArn) {
  return jsonEncode({
    'Version': '2012-10-17',
    'Statement': [
      {
        'Effect': 'Allow',
        'Action': ['s3:PutObject', 's3:GetObject'],
        'Resource': ['$canaryResultsBucketArn/*'],
      },
      {
        'Effect': 'Allow',
        'Action': ['s3:GetBucketLocation'],
        'Resource': [canaryResultsBucketArn],
      },
      {
        'Effect': 'Allow',
        'Action': ['s3:ListAllMyBuckets', 'xray:PutTraceSegments'],
        'Resource': ['*'],
      },
      {
        'Effect': 'Allow',
        'Action': 'cloudwatch:PutMetricData',
        'Resource': '*',
        'Condition': {
          'StringEquals': {'cloudwatch:namespace': 'CloudWatchSynthetics'},
        },
      },
    ],
  });
}
