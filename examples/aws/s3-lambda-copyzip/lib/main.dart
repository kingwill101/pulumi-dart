import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class S3LambdaCopyzipStack extends pulumi.Stack {
  late final pulumi.Output<String> tpsReportsBucket;
  late final pulumi.Output<String> tpsZipsBucket;

  S3LambdaCopyzipStack() {
    final tpsReports = aws.s3.Bucket('tpsReports');
    final tpsZips = aws.s3.Bucket('tpsZips');

    final lambdaRole = aws.iam.Role(
      'zipTpsReportsRole',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Action': 'sts:AssumeRole',
              'Principal': {'Service': 'lambda.amazonaws.com'},
              'Effect': 'Allow',
            },
          ],
        }).input(),
      ),
    );

    aws.iam.RolePolicy(
      'zipTpsReportsPolicy',
      args: aws.iam.RolePolicyArgs(
        role: lambdaRole.id,
        policy: pulumi.Output.all([tpsReports.arn, tpsZips.arn]).apply<String>((
          arns,
        ) {
          final srcArn = arns[0];
          final dstArn = arns[1];
          return jsonEncode({
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
              {
                'Effect': 'Allow',
                'Action': ['s3:GetObject', 's3:PutObject'],
                'Resource': ['$srcArn/*', '$dstArn/*'],
              },
            ],
          });
        }).input(),
      ),
    );

    final zipper = aws.lambda.FunctionType(
      'zipTpsReports',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: 'python3.11'.input(),
        handler: 'index.handler'.input(),
        code: pulumi.FileArchive('./app').input(),
        timeout: 30.input(),
        environment: tpsZips.bucket.apply(
          (String bucket) => aws.lambda.FunctionEnvironment(
            variables: {'DEST_BUCKET': bucket}.input(),
          ),
        ),
      ),
    );

    aws.lambda.Permission(
      'allowS3InvokeZipper',
      args: aws.lambda.PermissionArgs(
        action: 'lambda:InvokeFunction'.input(),
        function: zipper.arn,
        principal: 's3.amazonaws.com'.input(),
        sourceArn: tpsReports.arn,
      ),
    );

    aws.s3.BucketNotification(
      'zipperNotification',
      args: aws.s3.BucketNotificationArgs(
        bucket: tpsReports.bucket,
        lambdaFunctions: [
          aws.s3.BucketNotificationLambdaFunction(
            events: ['s3:ObjectCreated:*'].input(),
            lambdaFunctionArn: zipper.arn,
          ),
        ].input(),
      ),
    );

    tpsReportsBucket = tpsReports.bucket;
    tpsZipsBucket = tpsZips.bucket;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('tpsReportsBucket', tpsReportsBucket),
      pulumi.OutputProperty('tpsZipsBucket', tpsZipsBucket),
    ];
  }
}
