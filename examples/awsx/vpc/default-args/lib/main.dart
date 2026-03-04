import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

class VpcNodejsDefaultArgsStack extends pulumi.Stack {
  late final pulumi.Output<String?> vpcId;
  late final pulumi.Output<List<String>?> publicSubnetIds;
  late final pulumi.Output<List<String>?> privateSubnetIds;

  VpcNodejsDefaultArgsStack() {
    final myVpc = awsx.ec2.Vpc('awsx-dart-default-args');

    vpcId = myVpc.vpcId;
    publicSubnetIds = myVpc.publicSubnetIds;
    privateSubnetIds = myVpc.privateSubnetIds;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('vpcId', vpcId),
      pulumi.OutputProperty('publicSubnetIds', publicSubnetIds),
      pulumi.OutputProperty('privateSubnetIds', privateSubnetIds),
    ];
  }
}
