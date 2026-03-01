// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_load_balancer_args_doc}
/// Arguments for getLoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_load_balancer_args_doc}
class GetLoadBalancerArgs {
  /// Name of the load balancer
  final pulumi.Input<String> loadBalancerName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLoadBalancerArgs].
  /// [loadBalancerName] Name of the load balancer
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetLoadBalancerArgs({
    required pulumi.Output<String> loadBalancerName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      loadBalancerName = pulumi.Input.asInput<String>(loadBalancerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerName': loadBalancerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerArgs(
      loadBalancerName: pulumi.Output.create<String>(map['loadBalancerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

