import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_load_balancer_args.dart';
import 'package:pulumi_aws/ec2.dart' as pulumi_aws_ec2;
import 'package:pulumi_aws/lb.dart' as pulumi_aws_lb;

/// Provides an Application Load Balancer resource with listeners, default target group and default security group.
class ApplicationLoadBalancer extends pulumi.ComponentResource {
  /// Default security group, if auto-created
  late final pulumi.Output<pulumi_aws_ec2.SecurityGroup?> defaultSecurityGroup;
  /// Default target group, if auto-created
  late final pulumi.Output<pulumi_aws_lb.TargetGroup?> defaultTargetGroup;
  /// Listeners created as part of this load balancer
  late final pulumi.Output<List<Map<String, dynamic>>?> listeners;
  /// Underlying Load Balancer resource
  late final pulumi.Output<pulumi_aws_lb.LoadBalancer?> loadBalancer;
  /// Id of the VPC in which this load balancer is operating
  late final pulumi.Output<String?> vpcId;

  /// Creates a new [ApplicationLoadBalancer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationLoadBalancer]. {@macro pulumi_lb_application_load_balancer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationLoadBalancer(
    String name, {
    ApplicationLoadBalancerArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'awsx:lb:ApplicationLoadBalancer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.ComponentResourceOptions(),
          remote: true,
        ) {
    defaultSecurityGroup = registerOutput<pulumi_aws_ec2.SecurityGroup?>('defaultSecurityGroup');
    defaultTargetGroup = registerOutput<pulumi_aws_lb.TargetGroup?>('defaultTargetGroup');
    listeners = registerOutput<List<Map<String, dynamic>>?>('listeners');
    loadBalancer = registerOutput<pulumi_aws_lb.LoadBalancer?>('loadBalancer');
    vpcId = registerOutput<String?>('vpcId');
  }
}
