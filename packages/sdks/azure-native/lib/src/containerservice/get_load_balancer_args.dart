// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_load_balancer_args_doc}
/// Arguments for getLoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_load_balancer_args_doc}
class GetLoadBalancerArgs {
  /// The name of the load balancer.
  final pulumi.Input<String> loadBalancerName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the managed cluster resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetLoadBalancerArgs].
  /// [loadBalancerName] The name of the load balancer.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
  GetLoadBalancerArgs({
    required pulumi.Output<String> loadBalancerName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      loadBalancerName = pulumi.Input.asInput<String>(loadBalancerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerName': loadBalancerName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetLoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerArgs(
      loadBalancerName: pulumi.Output.create<String>(map['loadBalancerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

