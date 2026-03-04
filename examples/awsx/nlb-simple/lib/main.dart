import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;
import 'package:pulumi_awsx/ec2.dart' as awsx_ec2;

class TsNlbSimpleStack extends pulumi.Stack {
  TsNlbSimpleStack() {
    final vpc = awsx.ec2.Vpc(
      'test-vpc',
      args: awsx.ec2.VpcArgs(
        subnetSpecs: [
          awsx.ec2.SubnetSpec(type: awsx_ec2.SubnetType.valuePublic.input()),
        ].input(),
        natGateways: awsx.ec2
            .NatGatewayConfiguration(
              strategy: awsx_ec2.NatGatewayStrategy.valueNone.input(),
            )
            .input(),
      ),
    );

    awsx.lb.NetworkLoadBalancer(
      'nginx-lb',
      args: awsx.lb.NetworkLoadBalancerArgs(
        subnetIds: vpc.publicSubnetIds.apply<List<String>>((ids) => ids ?? []),
      ),
    );
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => [];
}
