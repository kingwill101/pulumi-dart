import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_aws/providers.dart' as providers;

class AssumeRoleStack extends pulumi.Stack {
  late final pulumi.Output<String> bucketName;

  AssumeRoleStack() {
    final config = pulumi.Config();
    final roleToAssumeArn = config.require('roleToAssumeARN');

    final isPreview = pulumi.Deployment.instance.isDryRun;
    final previewArnPattern = RegExp(
      r'^arn:aws:iam::123456789012:role/preview-',
    );
    if (!isPreview && previewArnPattern.hasMatch(roleToAssumeArn)) {
      throw StateError(
        "Configure a real roleToAssumeARN before 'pulumi up'. "
        'Example: pulumi config set roleToAssumeARN arn:aws:iam::<account>:role/<roleName>',
      );
    }

    final awsConfig = pulumi.Config('aws');
    final region = awsConfig.get('region');

    final provider = isPreview
        ? providers.ProviderProvider(
            'privileged',
            args: providers.ProviderArgs(region: region?.input()),
          )
        : providers.ProviderProvider(
            'privileged',
            args: providers.ProviderArgs(
              region: region?.input(),
              assumeRoles: [
                aws.index.ProviderAssumeRole(
                  roleArn: roleToAssumeArn.input(),
                  sessionName: 'PulumiSession'.input(),
                  externalId: 'PulumiApplication'.input(),
                ),
              ].input(),
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
