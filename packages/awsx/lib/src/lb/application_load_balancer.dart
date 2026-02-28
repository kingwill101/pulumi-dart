import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_load_balancer_args.dart';

/// Provides an Application Load Balancer resource with listeners, default target group and default security group.
class ApplicationLoadBalancer extends pulumi.ComponentResource {
  /// Default security group, if auto-created
  late final pulumi.Output<dynamic> defaultSecurityGroup;

  /// Default target group, if auto-created
  late final pulumi.Output<dynamic> defaultTargetGroup;

  /// Listeners created as part of this load balancer
  late final pulumi.Output<List<dynamic>?> listeners;

  /// Underlying Load Balancer resource
  late final pulumi.Output<dynamic> loadBalancer;

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
       ) {
    this.defaultSecurityGroup = registerOutput<dynamic>('defaultSecurityGroup');
    this.defaultTargetGroup = registerOutput<dynamic>('defaultTargetGroup');
    this.listeners = registerOutput<List<dynamic>?>('listeners');
    this.loadBalancer = registerOutput<dynamic>('loadBalancer');
    this.vpcId = registerOutput<String?>('vpcId');
  }
}
