import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_docker_build/pulumi_docker_build.dart' as docker_build;

Future<void> run() async {
  final bucket = aws.s3.Bucket('bucket');

  final repo = aws.ecr.Repository(
    'repo',
    args: aws.ecr.RepositoryArgs(forceDelete: true.input()),
  );

  final image = docker_build.index.Image(
    'image',
    args: docker_build.index.ImageArgs(
      push: true.output(),
      context: docker_build.index.BuildContext(location: './app').output(),
      tags: repo.repositoryUrl.apply<List<String>>((url) => ['$url:latest']),
    ),
  );

  final thumbnailerRole = aws.iam.Role(
    'thumbnailerRole',
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

  aws.iam.RolePolicyAttachment(
    'lambdaFullAccess',
    args: aws.iam.RolePolicyAttachmentArgs(
      role: thumbnailerRole.name,
      policyArn: 'arn:aws:iam::aws:policy/AWSLambdaExecute'.input(),
    ),
  );

  final thumbnailer = aws.lambda.FunctionType(
    'thumbnailer',
    args: aws.lambda.FunctionArgs(
      packageType: 'Image'.input(),
      imageUri: image.ref,
      role: thumbnailerRole.arn,
      timeout: 900.input(),
    ),
  );

  final onNewThumbnailRole = aws.iam.Role(
    'onNewThumbnailRole',
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

  aws.iam.RolePolicyAttachment(
    'onNewThumbnailRolePolicy',
    args: aws.iam.RolePolicyAttachmentArgs(
      role: onNewThumbnailRole.name,
      policyArn: 'arn:aws:iam::aws:policy/AWSLambdaExecute'.input(),
    ),
  );

  final onNewThumbnail = aws.lambda.FunctionType(
    'onNewThumbnail',
    args: aws.lambda.FunctionArgs(
      runtime: 'nodejs20.x'.input(),
      role: onNewThumbnailRole.arn,
      handler: 'index.handler'.input(),
      code: pulumi.FileArchive('./onNewThumbnail').input(),
    ),
  );

  final onNewVideoPermission = aws.lambda.Permission(
    'onNewVideoPermission',
    args: aws.lambda.PermissionArgs(
      action: 'lambda:InvokeFunction'.input(),
      function: thumbnailer.arn,
      principal: 's3.amazonaws.com'.input(),
      sourceArn: bucket.arn,
    ),
  );

  final onNewThumbnailPermission = aws.lambda.Permission(
    'onNewThumbnailPermission',
    args: aws.lambda.PermissionArgs(
      action: 'lambda:InvokeFunction'.input(),
      function: onNewThumbnail.arn,
      principal: 's3.amazonaws.com'.input(),
      sourceArn: bucket.arn,
    ),
  );

  aws.s3.BucketNotification(
    'bucketNotifications',
    args: aws.s3.BucketNotificationArgs(
      bucket: bucket.id,
      lambdaFunctions: [
        aws.s3.BucketNotificationLambdaFunction(
          lambdaFunctionArn: thumbnailer.arn,
          events: ['s3:ObjectCreated:*'].input(),
          filterSuffix: '.mp4'.input(),
        ),
        aws.s3.BucketNotificationLambdaFunction(
          lambdaFunctionArn: onNewThumbnail.arn,
          events: ['s3:ObjectCreated:*'].input(),
          filterSuffix: '.jpg'.input(),
        ),
      ].input(),
    ),
    options: pulumi.CustomResourceOptions(
      dependsOn: [onNewVideoPermission, onNewThumbnailPermission],
    ),
  );

  pulumi.export('bucketName', bucket.id);
}
