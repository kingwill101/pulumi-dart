// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_network_peering_policy_properties.dart';

/// {@template pulumi_managednetwork_managed_network_peering_policy_args_doc}
/// The set of arguments for ManagedNetworkPeeringPolicy.
/// {@endtemplate}
/// {@macro pulumi_managednetwork_managed_network_peering_policy_args_doc}
class ManagedNetworkPeeringPolicyArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the Managed Network.
  final pulumi.Input<String> managedNetworkName;
  /// The name of the Managed Network Peering Policy.
  final pulumi.Input<String>? managedNetworkPeeringPolicyName;
  /// Gets or sets the properties of a Managed Network Policy
  final pulumi.Input<ManagedNetworkPeeringPolicyProperties>? properties;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ManagedNetworkPeeringPolicyArgs].
  /// [location] The geo-location where the resource lives
  /// [managedNetworkName] The name of the Managed Network.
  /// [managedNetworkPeeringPolicyName] The name of the Managed Network Peering Policy.
  /// [properties] Gets or sets the properties of a Managed Network Policy
  /// [resourceGroupName] The name of the resource group.
  ManagedNetworkPeeringPolicyArgs({
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
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managedNetworkName: (map['managedNetworkName'] as String).input(),
      managedNetworkPeeringPolicyName: map['managedNetworkPeeringPolicyName'] == null ? null : (map['managedNetworkPeeringPolicyName']! as String).input(),
      properties: map['properties'] == null ? null : (ManagedNetworkPeeringPolicyProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

