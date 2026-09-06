// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_network_peering_policy_properties.dart';

/// {@template pulumi_managednetwork_managed_network_peering_policy_args_doc}
/// The set of arguments for ManagedNetworkPeeringPolicy.
/// {@endtemplate}
/// {@macro pulumi_managednetwork_managed_network_peering_policy_args_doc}
class ManagedNetworkPeeringPolicyArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the Managed Network.
  final pulumi.Input<String> managedNetworkName;
  /// The name of the Managed Network Peering Policy.
  final pulumi.Input<String?>? managedNetworkPeeringPolicyName;
  /// Gets or sets the properties of a Managed Network Policy
  final pulumi.Input<ManagedNetworkPeeringPolicyProperties?>? properties;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ManagedNetworkPeeringPolicyArgs].
  /// [location] The geo-location where the resource lives
  /// [managedNetworkName] The name of the Managed Network.
  /// [managedNetworkPeeringPolicyName] The name of the Managed Network Peering Policy.
  /// [properties] Gets or sets the properties of a Managed Network Policy
  /// [resourceGroupName] The name of the resource group.
  const ManagedNetworkPeeringPolicyArgs({
    this.location,
    required this.managedNetworkName,
    this.managedNetworkPeeringPolicyName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'managedNetworkName': managedNetworkName,
      'managedNetworkPeeringPolicyName': ?managedNetworkPeeringPolicyName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ManagedNetworkPeeringPolicyProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ManagedNetworkPeeringPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ManagedNetworkPeeringPolicyArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedNetworkName: pulumi.Input.fromValue(map['managedNetworkName'] as String),
      managedNetworkPeeringPolicyName: (() { final guardedValue = map['managedNetworkPeeringPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedNetworkPeeringPolicyProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
