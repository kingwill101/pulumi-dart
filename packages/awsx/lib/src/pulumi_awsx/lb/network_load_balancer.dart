import 'package:pulumi/pulumi.dart';
import 'network_load_balancer_args.dart';

/// Provides a Network Load Balancer resource with listeners and default target group.
class NetworkLoadBalancer extends ComponentResource {
  /// Default target group, if auto-created
  late final Output<dynamic> defaultTargetGroup;

  /// Listeners created as part of this load balancer
  late final Output<List<dynamic>?> listeners;

  /// Underlying Load Balancer resource
  late final Output<dynamic> loadBalancer;

  /// Id of the VPC in which this load balancer is operating
  late final Output<String?> vpcId;

  NetworkLoadBalancer(
    String name, {
    NetworkLoadBalancerArgs? args,
    ComponentResourceOptions? options,
  }) : super(
          'awsx:lb:NetworkLoadBalancer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? ComponentResourceOptions(),
        ) {
    this.defaultTargetGroup = Output.createUnknown<dynamic>();
    this.listeners = Output.createUnknown<List<dynamic>?>();
    this.loadBalancer = Output.createUnknown<dynamic>();
    this.vpcId = Output.createUnknown<String?>();
  }
}
