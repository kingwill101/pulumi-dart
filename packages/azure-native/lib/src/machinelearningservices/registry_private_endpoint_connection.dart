// ignore_for_file: unused_element, unnecessary_cast

import 'registry_private_endpoint_connection_properties.dart';

/// Private endpoint connection definition.
class RegistryPrivateEndpointConnection {
  /// This is the private endpoint connection name created on SRP
  /// Full resource id: /subscriptions/{subId}/resourceGroups/{rgName}/providers/Microsoft.MachineLearningServices/{resourceType}/{resourceName}/registryPrivateEndpointConnections/{peConnectionName}
  final String? id;
  /// Same as workspace location.
  final String? location;
  /// Properties of the Private Endpoint Connection
  final RegistryPrivateEndpointConnectionProperties? properties;

  /// Creates a new [RegistryPrivateEndpointConnection].
  /// [id] This is the private endpoint connection name created on SRP
  /// [location] Same as workspace location.
  /// [properties] Properties of the Private Endpoint Connection
  RegistryPrivateEndpointConnection({
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

  factory RegistryPrivateEndpointConnection.fromMap(Map<String, dynamic> map) {
    return RegistryPrivateEndpointConnection(
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : RegistryPrivateEndpointConnectionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

