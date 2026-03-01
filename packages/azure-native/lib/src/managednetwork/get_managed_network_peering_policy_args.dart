// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetwork_get_managed_network_peering_policy_args_doc}
/// Arguments for getManagedNetworkPeeringPolicy.
/// {@endtemplate}
/// {@macro pulumi_managednetwork_get_managed_network_peering_policy_args_doc}
class GetManagedNetworkPeeringPolicyArgs {
  /// The name of the Managed Network.
  final pulumi.Input<String> managedNetworkName;
  /// The name of the Managed Network Peering Policy.
  final pulumi.Input<String> managedNetworkPeeringPolicyName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedNetworkPeeringPolicyArgs].
  /// [managedNetworkName] The name of the Managed Network.
  /// [managedNetworkPeeringPolicyName] The name of the Managed Network Peering Policy.
  /// [resourceGroupName] The name of the resource group.
  GetManagedNetworkPeeringPolicyArgs({
    required String managedNetworkName,
    required String managedNetworkPeeringPolicyName,
    required String resourceGroupName,
  }) :
      managedNetworkName = pulumi.Input.asInput<String>(managedNetworkName),
      managedNetworkPeeringPolicyName = pulumi.Input.asInput<String>(managedNetworkPeeringPolicyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedNetworkName': managedNetworkName,
      'managedNetworkPeeringPolicyName': managedNetworkPeeringPolicyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedNetworkPeeringPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedNetworkPeeringPolicyArgs(
      managedNetworkName: map['managedNetworkName'] as String,
      managedNetworkPeeringPolicyName: map['managedNetworkPeeringPolicyName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

