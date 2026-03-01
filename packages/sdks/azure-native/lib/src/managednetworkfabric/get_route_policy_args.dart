// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_route_policy_args_doc}
/// Arguments for getRoutePolicy.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_route_policy_args_doc}
class GetRoutePolicyArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the Route Policy.
  final pulumi.Input<String> routePolicyName;

  /// Creates a new [GetRoutePolicyArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [routePolicyName] Name of the Route Policy.
  GetRoutePolicyArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> routePolicyName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routePolicyName = pulumi.Input.asInput<String>(routePolicyName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'routePolicyName': routePolicyName,
    };
  }

  factory GetRoutePolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRoutePolicyArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routePolicyName: pulumi.Output.create<String>(map['routePolicyName'] as String),
    );
  }
}

