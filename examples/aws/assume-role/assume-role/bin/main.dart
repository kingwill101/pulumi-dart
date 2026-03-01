import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class AssumeRoleStack extends pulumi.Stack {
  late final pulumi.Output<String> bucketName;

  AssumeRoleStack() {
    final config = pulumi.Config();
    final roleToAssumeArn = config.require('roleToAssumeARN');

    final isPreview = pulumi.Deployment.instance.isDryRun;
    final previewArnPattern = RegExp(r'^arn:aws:iam::123456789012:role/preview-');
    if (!isPreview && previewArnPattern.hasMatch(roleToAssumeArn)) {
      throw StateError(
        "Configure a real roleToAssumeARN before 'pulumi up'. "
        'Example: pulumi config set roleToAssumeARN arn:aws:iam::<account>:role/<roleName>',
      );
    }

    final awsConfig = pulumi.Config('aws');
    final region = awsConfig.get('region');

    final provider = isPreview
        ? aws.Aws(
            'privileged',
            args: aws.AwsArgs(region: region?.output()),
          )
        : aws.Aws(
            'privileged',
            args: aws.AwsArgs(
              region: region?.output(),
              assumeRoles: [
                aws.ProviderAssumeRole(
                  roleArn: roleToAssumeArn,
                  sessionName: 'PulumiSession',
                  externalId: 'PulumiApplication',
                ),
              ].output(),
            ),
          );

    final bucket = aws.s3.Bucket(
      'my-bucket',
      options: pulumi.CustomResourceOptions(provider: provider),
    );

    bucketName = bucket.bucketDomainName;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('bucketName', bucketName)];
  }
}

Future<void> main() async {
  await pulumi.Deployment.run(() => AssumeRoleStack());
}
