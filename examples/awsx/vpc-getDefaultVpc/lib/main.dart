import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

class TsVpcGetDefaultVpcStack extends pulumi.Stack {
  late final pulumi.Output<String?> vpcId;
  late final pulumi.Output<List<String>?> publicSubnetIds;

  TsVpcGetDefaultVpcStack() {
    final defaultVpc = awsx.ec2.DefaultVpc('default-vpc');

    vpcId = defaultVpc.vpcId;
    publicSubnetIds = defaultVpc.publicSubnetIds;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('vpcId', vpcId),
      pulumi.OutputProperty('publicSubnetIds', publicSubnetIds),
    ];
  }
}
