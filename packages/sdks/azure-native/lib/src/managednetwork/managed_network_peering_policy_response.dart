// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_network_peering_policy_properties_response.dart';

/// The Managed Network Peering Policy resource
class ManagedNetworkPeeringPolicyResponse {
  /// Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final pulumi.Input<String> id;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource
  final pulumi.Input<String> name;
  /// Gets or sets the properties of a Managed Network Policy
  final pulumi.Input<ManagedNetworkPeeringPolicyPropertiesResponse>? properties;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final pulumi.Input<String> type;

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
      'properties': ?pulumi.Input.mapOptionalInputValue<ManagedNetworkPeeringPolicyPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ManagedNetworkPeeringPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ManagedNetworkPeeringPolicyResponse(
      id: (map['id'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: (map['name'] as String).input(),
      properties: map['properties'] == null ? null : (ManagedNetworkPeeringPolicyPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

