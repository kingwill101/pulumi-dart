import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

class TsNlbWithSecurityGroupStack extends pulumi.Stack {
  TsNlbWithSecurityGroupStack() {
    final securityGroup = aws.ec2.SecurityGroup('nlb-security-group');

    awsx.lb.NetworkLoadBalancer(
      'nlb',
      args: awsx.lb.NetworkLoadBalancerArgs(
        securityGroups: securityGroup.id.apply((id) => [id]),
      ),
    );
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => [];
}
