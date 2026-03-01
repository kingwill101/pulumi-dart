// ignore_for_file: unused_element, unnecessary_cast

import 'managed_network_peering_policy_properties_response.dart';

/// The Managed Network Peering Policy resource
class ManagedNetworkPeeringPolicyResponse {
  /// Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String name;
  /// Gets or sets the properties of a Managed Network Policy
  final ManagedNetworkPeeringPolicyPropertiesResponse? properties;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final String type;

  /// Creates a new [ManagedNetworkPeeringPolicyResponse].
  /// [id] Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [properties] Gets or sets the properties of a Managed Network Policy
  /// [type] The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  ManagedNetworkPeeringPolicyResponse({
    required this.id,
    this.location,
    required this.name,
    this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': ?location,
      'name': name,
      'properties': ?properties == null ? null : properties!.toMap(),
      'type': type,
    };
  }

  factory ManagedNetworkPeeringPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ManagedNetworkPeeringPolicyResponse(
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      properties: map['properties'] == null ? null : ManagedNetworkPeeringPolicyPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

