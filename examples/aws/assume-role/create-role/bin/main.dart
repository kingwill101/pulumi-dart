import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class CreateRoleStack extends pulumi.Stack {
  late final pulumi.Output<String> roleArn;
  late final pulumi.Output<String> accessKeyId;
  late final pulumi.Output<String?> secretAccessKey;

  CreateRoleStack() {
    final config = pulumi.Config();
    final unprivilegedUsername = config.require('unprivilegedUsername');

    final unprivilegedUser = aws.iam.User(
      'unprivileged-user',
      args: aws.iam.UserArgs(name: unprivilegedUsername.output()),
    );

    final unprivilegedUserCreds = aws.iam.AccessKey(
      'unprivileged-user-key',
      args: aws.iam.AccessKeyArgs(user: unprivilegedUser.name),
      options: pulumi.CustomResourceOptions(
        additionalSecretOutputs: ['secret'],
      ),
    );

    final assumeRolePolicy = unprivilegedUser.arn.apply<String>((arn) {
      return jsonEncode({
        'Version': '2012-10-17',
        'Statement': [
          {
            'Effect': 'Allow',
            'Principal': {'AWS': arn},
            'Action': 'sts:AssumeRole',
          },
        ],
      });
    });

    final allowS3ManagementRole = aws.iam.Role(
      'allow-s3-management',
      args: aws.iam.RoleArgs(
        description: 'Allow management of S3 buckets'.output(),
        assumeRolePolicy: assumeRolePolicy,
      ),
    );

    aws.iam.RolePolicy(
      'allow-s3-management-policy',
      args: aws.iam.RolePolicyArgs(
        role: allowS3ManagementRole.id,
        policy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Sid': 'AllowS3Management',
              'Effect': 'Allow',
              'Resource': '*',
              'Action': 's3:*',
            },
          ],
        }).output(),
      ),
      options: pulumi.CustomResourceOptions(parent: allowS3ManagementRole),
    );

    roleArn = allowS3ManagementRole.arn;
    accessKeyId = unprivilegedUserCreds.id;
    secretAccessKey = unprivilegedUserCreds.secret;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('roleArn', roleArn),
      pulumi.OutputProperty('accessKeyId', accessKeyId),
      pulumi.OutputProperty('secretAccessKey', secretAccessKey),
    ];
  }
}

Future<void> main() async {
  await pulumi.Deployment.run(() => CreateRoleStack());
}
