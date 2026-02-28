import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_load_balancer_args.dart';

/// Provides a Network Load Balancer resource with listeners and default target group.
class NetworkLoadBalancer extends pulumi.ComponentResource {
  /// Default target group, if auto-created
  late final pulumi.Output<dynamic> defaultTargetGroup;

  /// Listeners created as part of this load balancer
  late final pulumi.Output<List<dynamic>?> listeners;

  /// Underlying Load Balancer resource
  late final pulumi.Output<dynamic> loadBalancer;

  /// Id of the VPC in which this load balancer is operating
  late final pulumi.Output<String?> vpcId;

  /// Creates a new [NetworkLoadBalancer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkLoadBalancer]. {@macro pulumi_lb_network_load_balancer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkLoadBalancer(
    String name, {
    NetworkLoadBalancerArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
         'awsx:lb:NetworkLoadBalancer',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.ComponentResourceOptions(),
       ) {
    this.defaultTargetGroup = registerOutput<dynamic>('defaultTargetGroup');
    this.listeners = registerOutput<List<dynamic>?>('listeners');
    this.loadBalancer = registerOutput<dynamic>('loadBalancer');
    this.vpcId = registerOutput<String?>('vpcId');
  }
}
