import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;
import 'package:pulumi_awsx/ec2.dart' as awsx_ec2;

class VpcNodejsSpecificVpcLayoutStack extends pulumi.Stack {
  late final pulumi.Output<String?> vpcId;
  late final pulumi.Output<List<String>?> publicSubnetIds;
  late final pulumi.Output<List<String>?> privateSubnetIds;

  VpcNodejsSpecificVpcLayoutStack() {
    final myVpc = awsx.ec2.Vpc(
      'awsx-dart-specific-args',
      args: awsx.ec2.VpcArgs(
        subnetSpecs: [
          awsx.ec2.SubnetSpec(
            type: awsx_ec2.SubnetType.valuePrivate.input(),
            cidrMask: 21.input(),
          ),
          awsx.ec2.SubnetSpec(
            type: awsx_ec2.SubnetType.valuePublic.input(),
            cidrMask: 24.input(),
          ),
        ].input(),
      ),
    );

    vpcId = myVpc.vpcId.apply((v) => v!);
    publicSubnetIds = myVpc.publicSubnetIds.apply((v) => v!);
    privateSubnetIds = myVpc.privateSubnetIds.apply((v) => v!);
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
