import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

class VpcNodejsVpcWithServiceEndpointStack extends pulumi.Stack {
  late final pulumi.Output<String?> vpcId;
  late final pulumi.Output<List<String>?> publicSubnetIds;
  late final pulumi.Output<List<String>?> privateSubnetIds;
  late final pulumi.Output<List<Map<String, dynamic>>?> vpcEndpoints;

  VpcNodejsVpcWithServiceEndpointStack() {
    final myVpc = awsx.ec2.Vpc(
      'awsx-with-service-endpoint',
      args: awsx.ec2.VpcArgs(
        vpcEndpointSpecs: [
          awsx.ec2.VpcEndpointSpec(
            serviceName: 'com.amazonaws.us-west-2.s3'.input(),
          ),
        ].input(),
      ),
    );

    vpcId = myVpc.vpcId;
    publicSubnetIds = myVpc.publicSubnetIds;
    privateSubnetIds = myVpc.privateSubnetIds;
    vpcEndpoints = myVpc.vpcEndpoints;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('vpcId', vpcId),
      pulumi.OutputProperty('publicSubnetIds', publicSubnetIds),
      pulumi.OutputProperty('privateSubnetIds', privateSubnetIds),
      pulumi.OutputProperty('vpcEndpoints', vpcEndpoints),
    ];
  }
}
