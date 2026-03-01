import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class ConsoleSlackNotificationStack extends pulumi.Stack {
  late final pulumi.Output<String> bucketName;
  late final pulumi.Output<String> lambdaName;
  late final pulumi.Output<String> eventRuleName;

  ConsoleSlackNotificationStack() {
    final config = pulumi.Config();
    final slackWebhookURL = config.require('slackWebhookURL');
    final slackMessageUsername =
        config.get('slackMessageUsername') ?? 'Console Change Monitor';
    final slackMessageText =
        config.get('slackMessageText') ??
        ':warning: Somebody made a change in the console!';
    final trailObjectExpirationInDays =
        (config.getNumber('trailObjectExpirationInDays') ?? 0).toInt();

    final caller = pulumi.output(
      aws.getCallerIdentity(aws.GetCallerIdentityArgs()),
    );

    final bucket = aws.s3.Bucket(
      'trail-bucket',
      args: aws.s3.BucketArgs(forceDestroy: true),
    );

    if (trailObjectExpirationInDays > 0) {
      aws.s3.BucketLifecycleConfiguration(
        'trail-bucket-lifecycle',
        args: aws.s3.BucketLifecycleConfigurationArgs(
          bucket: bucket.bucket,
          rules: [
            aws.s3.BucketLifecycleConfigurationRule(
              id: 'expire-trail-objects',
              status: 'Enabled',
              expiration: aws.s3.BucketLifecycleConfigurationRuleExpiration(
                days: trailObjectExpirationInDays,
              ),
            ),
          ],
        ),
      );
    }

    final bucketPolicyJson = pulumi.Output.tuple(bucket.bucket, caller).apply((
      v,
    ) {
      final bucketName = v.$1;
      final accountId = v.$2.accountId;
      return jsonEncode({
        'Version': '2012-10-17',
        'Statement': [
          {
            'Sid': 'AWSCloudTrailAclCheck20150319',
            'Effect': 'Allow',
            'Principal': {'Service': 'cloudtrail.amazonaws.com'},
            'Action': 's3:GetBucketAcl',
            'Resource': 'arn:aws:s3:::$bucketName',
          },
          {
            'Sid': 'AWSCloudTrailWrite20150319',
            'Effect': 'Allow',
            'Principal': {'Service': 'cloudtrail.amazonaws.com'},
            'Action': 's3:PutObject',
            'Resource': 'arn:aws:s3:::$bucketName/AWSLogs/$accountId/*',
            'Condition': {
              'StringEquals': {'s3:x-amz-acl': 'bucket-owner-full-control'},
            },
          },
        ],
      });
    });

    final bucketPolicy = aws.s3.BucketPolicy(
      'trail-bucket-policy',
      args: aws.s3.BucketPolicyArgs(bucket: bucket.bucket, policy: bucketPolicyJson),
    );

    aws.s3.BucketPublicAccessBlock(
      'trail-bucket-pab',
      args: aws.s3.BucketPublicAccessBlockArgs(
        bucket: bucket.bucket,
        blockPublicAcls: true,
        blockPublicPolicy: true,
        ignorePublicAcls: true,
        restrictPublicBuckets: true,
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [bucketPolicy]),
    );

    final trail = aws.cloudtrail.Trail(
      'console-trail',
      args: aws.cloudtrail.TrailArgs(
        s3BucketName: bucket.bucket,
        eventSelectors: [
          aws.cloudtrail.TrailEventSelector(readWriteType: 'WriteOnly'),
        ],
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [bucket, bucketPolicy]),
    );

    final lambdaRole = aws.iam.Role(
      'notifier-lambda-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Effect': 'Allow',
              'Principal': {'Service': 'lambda.amazonaws.com'},
              'Action': 'sts:AssumeRole',
            },
          ],
        }),
      ),
    );

    final logPolicy = aws.iam.RolePolicy(
      'notifier-lambda-log-policy',
      args: aws.iam.RolePolicyArgs(
        role: lambdaRole.name,
        policy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Effect': 'Allow',
              'Action': [
                'logs:CreateLogGroup',
                'logs:CreateLogStream',
                'logs:PutLogEvents',
              ],
              'Resource': 'arn:aws:logs:*:*:*',
            },
          ],
        }),
      ),
    );

    final function = aws.lambda.FunctionType(
      'console-change-slack-notifier',
      args: aws.lambda.FunctionArgs(
        handler: 'index.handler',
        runtime: aws.lambda.Runtime.nodeJS20dX.value,
        code: pulumi.FileArchive('./lambda'),
        role: lambdaRole.arn,
        environment: aws.lambda.FunctionEnvironment(
          variables: {
            'SLACK_WEBHOOK_URL': slackWebhookURL,
            'SLACK_WEBHOOK_USERNAME': slackMessageUsername,
            'SLACK_MESSAGE_TEXT': slackMessageText,
          },
        ),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [logPolicy]),
    );

    final eventRule = aws.cloudwatch.EventRule(
      'console-change-rule',
      args: aws.cloudwatch.EventRuleArgs(
        eventPattern: jsonEncode({
          'detail-type': ['AWS API Call via CloudTrail'],
        }),
      ),
      options: pulumi.CustomResourceOptions(parent: trail),
    );

    aws.lambda.Permission(
      'allow-eventbridge-invoke',
      args: aws.lambda.PermissionArgs(
        action: 'lambda:InvokeFunction',
        principal: 'events.amazonaws.com',
        sourceArn: eventRule.arn,
        function: function.name,
      ),
      options: pulumi.CustomResourceOptions(parent: eventRule),
    );

    aws.cloudwatch.EventTarget(
      'console-change-target',
      args: aws.cloudwatch.EventTargetArgs(rule: eventRule.name, arn: function.arn),
      options: pulumi.CustomResourceOptions(parent: eventRule),
    );

    bucketName = bucket.bucket;
    lambdaName = function.name;
    eventRuleName = eventRule.name;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('bucketName', bucketName),
      pulumi.OutputProperty('lambdaName', lambdaName),
      pulumi.OutputProperty('eventRuleName', eventRuleName),
    ];
  }
}
