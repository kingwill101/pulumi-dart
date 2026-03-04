import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

class VpcNodejsCustomProviderStack extends pulumi.Stack {
  late final pulumi.Output<String?> defaultVpc;
  late final pulumi.Output<String?> vpc1;

  VpcNodejsCustomProviderStack() {
    final provider = aws.providers.Aws(
      'us-east-1-provider',
      args: aws.providers.AwsArgs(region: 'us-east-1'.input()),
    );

    final defaultVpcResource = awsx.ec2.DefaultVpc(
      'default-vpc',
      options: pulumi.ComponentResourceOptions(provider: provider),
    );

    final vpc1Resource = awsx.ec2.Vpc(
      'vpc-1',
      options: pulumi.ComponentResourceOptions(provider: provider),
    );

    defaultVpc = defaultVpcResource.vpcId;
    vpc1 = vpc1Resource.vpcId;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('defaultVpc', defaultVpc),
      pulumi.OutputProperty('vpc1', vpc1),
    ];
  }
}
