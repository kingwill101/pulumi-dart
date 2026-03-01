// ignore_for_file: unused_element, unnecessary_cast

import 'registry_private_endpoint_connection_properties_response.dart';

/// Private endpoint connection definition.
class RegistryPrivateEndpointConnectionResponse {
  /// This is the private endpoint connection name created on SRP
  /// Full resource id: /subscriptions/{subId}/resourceGroups/{rgName}/providers/Microsoft.MachineLearningServices/{resourceType}/{resourceName}/registryPrivateEndpointConnections/{peConnectionName}
  final String? id;
  /// Same as workspace location.
  final String? location;
  /// Properties of the Private Endpoint Connection
  final RegistryPrivateEndpointConnectionPropertiesResponse? properties;

  /// Creates a new [RegistryPrivateEndpointConnectionResponse].
  /// [id] This is the private endpoint connection name created on SRP
  /// [location] Same as workspace location.
  /// [properties] Properties of the Private Endpoint Connection
  RegistryPrivateEndpointConnectionResponse({
    this.id,
    this.location,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory RegistryPrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return RegistryPrivateEndpointConnectionResponse(
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : RegistryPrivateEndpointConnectionPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

