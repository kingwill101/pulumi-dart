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
        }).input(),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'thumbnailer-lambda-exec',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: lambdaRole.name,
        policyArn: 'arn:aws:iam::aws:policy/AWSLambdaExecute'.input(),
      ),
    );

    final onNewVideo = aws.lambda.FunctionType(
      'onNewVideo',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: 'nodejs20.x'.input(),
        handler: 'index.handler'.input(),
        code: pulumi.FileArchive('./lambda/on-new-video').input(),
        environment: aws.lambda.FunctionEnvironment(
          variables: pulumi
              .Output
              .all([bucket.id])
              .apply<Map<String, String>>((List<String> ids) => {'S3_BUCKET': ids[0]})
              .input(),
        ).input(),
      ),
    );

    final onNewThumbnail = aws.lambda.FunctionType(
      'onNewThumbnail',
      args: aws.lambda.FunctionArgs(
        role: lambdaRole.arn,
        runtime: 'nodejs20.x'.input(),
        handler: 'index.handler'.input(),
        code: pulumi.FileArchive('./lambda/on-new-thumbnail').input(),
      ),
    );

    aws.lambda.Permission(
      'allow-s3-invoke-on-new-video',
      args: aws.lambda.PermissionArgs(
        action: 'lambda:InvokeFunction'.input(),
        function: onNewVideo.arn,
        principal: 's3.amazonaws.com'.input(),
        sourceArn: bucket.arn,
      ),
    );

    aws.lambda.Permission(
      'allow-s3-invoke-on-new-thumbnail',
      args: aws.lambda.PermissionArgs(
        action: 'lambda:InvokeFunction'.input(),
        function: onNewThumbnail.arn,
        principal: 's3.amazonaws.com'.input(),
        sourceArn: bucket.arn,
      ),
    );

    aws.s3.BucketNotification(
      'bucket-notifications',
      args: aws.s3.BucketNotificationArgs(
        bucket: bucket.id,
        lambdaFunctions: [
            aws.s3.BucketNotificationLambdaFunction(
              id: 'on-new-video'.input(),
              lambdaFunctionArn: onNewVideo.arn,
              events: ['s3:ObjectCreated:*'].input(),
              filterSuffix: '.mp4'.input(),
            ),
            aws.s3.BucketNotificationLambdaFunction(
              id: 'on-new-thumbnail'.input(),
              lambdaFunctionArn: onNewThumbnail.arn,
              events: ['s3:ObjectCreated:*'].input(),
              filterSuffix: '.jpg'.input(),
            ),
        ].input(),
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
