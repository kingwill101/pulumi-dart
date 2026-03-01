// ignore_for_file: unused_element, unnecessary_cast

import 'vault_private_endpoint_connection_response.dart';

/// Information to be stored in Vault properties as an element of privateEndpointConnections List.
class PrivateEndpointConnectionVaultPropertiesResponse {
  /// Format of id subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.[Service]/{resource}/{resourceName}/privateEndpointConnections/{connectionName}.
  final String id;
  /// The location of the private Endpoint connection
  final String location;
  /// The name of the private Endpoint Connection
  final String name;
  /// Private Endpoint Connection Response Properties.
  final VaultPrivateEndpointConnectionResponse properties;
  /// The type, which will be of the format, Microsoft.RecoveryServices/vaults/privateEndpointConnections
  final String type;

  /// Creates a new [PrivateEndpointConnectionVaultPropertiesResponse].
  /// [id] Format of id subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.[Service]/{resource}/{resourceName}/privateEndpointConnections/{connectionName}.
  /// [location] The location of the private Endpoint connection
  /// [name] The name of the private Endpoint Connection
  /// [properties] Private Endpoint Connection Response Properties.
  /// [type] The type, which will be of the format, Microsoft.RecoveryServices/vaults/privateEndpointConnections
  PrivateEndpointConnectionVaultPropertiesResponse({
    required this.id,
    required this.location,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory PrivateEndpointConnectionVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionVaultPropertiesResponse(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      properties: VaultPrivateEndpointConnectionResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

