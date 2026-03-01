import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class ThumbnailerStack extends pulumi.Stack {
  late final pulumi.Output<String> bucketName;

  ThumbnailerStack() {
    final bucket = aws.s3.Bucket('bucket');

    final lambdaRole = aws.iam.Role(
      'thumbnailer-role',
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

    aws.iam.RolePolicyAttachment(
      'thumbnailer-lambda-exec',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: lambdaRole.name,
        policyArn: 'arn:aws:iam::aws:policy/AWSLambdaExecute',
      ),
    );

    final onNewVideo = aws.lambda.FunctionType(
      'onNewVideo',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: aws.lambda.Runtime.nodeJS20dX.value,
        handler: 'index.handler',
        code: pulumi.FileArchive('./lambda/on-new-video'),
        environment: aws.lambda.FunctionEnvironment(
          variables: {'S3_BUCKET': bucket.id},
        ).output(),
      ),
    );

    final onNewThumbnail = aws.lambda.FunctionType(
      'onNewThumbnail',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: aws.lambda.Runtime.nodeJS20dX.value,
        handler: 'index.handler',
        code: pulumi.FileArchive('./lambda/on-new-thumbnail'),
      ),
    );

    aws.lambda.Permission(
      'allow-s3-invoke-on-new-video',
      args: aws.lambda.PermissionArgs(
        action: 'lambda:InvokeFunction',
        function: onNewVideo.arn,
        principal: 's3.amazonaws.com',
        sourceArn: bucket.arn,
      ),
    );

    aws.lambda.Permission(
      'allow-s3-invoke-on-new-thumbnail',
      args: aws.lambda.PermissionArgs(
        action: 'lambda:InvokeFunction',
        function: onNewThumbnail.arn,
        principal: 's3.amazonaws.com',
        sourceArn: bucket.arn,
      ),
    );

    aws.s3.BucketNotification(
      'bucket-notifications',
      args: aws.s3.BucketNotificationArgs(
        bucket: bucket.id,
        lambdaFunctions: [
          aws.s3.BucketNotificationLambdaFunction(
            id: 'on-new-video',
            lambdaFunctionArn: onNewVideo.arn,
            events: ['s3:ObjectCreated:*'],
            filterSuffix: '.mp4',
          ),
          aws.s3.BucketNotificationLambdaFunction(
            id: 'on-new-thumbnail',
            lambdaFunctionArn: onNewThumbnail.arn,
            events: ['s3:ObjectCreated:*'],
            filterSuffix: '.jpg',
          ),
        ].output(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [onNewVideo, onNewThumbnail]),
    );

    bucketName = bucket.id;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('bucketName', bucketName)];
  }
}
