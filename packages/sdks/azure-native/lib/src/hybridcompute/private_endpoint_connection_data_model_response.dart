// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_connection_properties_response.dart';

/// The Data Model for a Private Endpoint Connection associated with a Private Link Scope
class PrivateEndpointConnectionDataModelResponse {
  /// The ARM Resource Id of the Private Endpoint.
  final String id;
  /// The Name of the Private Endpoint.
  final String name;
  /// The Private Endpoint Connection properties.
  final PrivateEndpointConnectionPropertiesResponse? properties;
  /// Azure resource type
  final String type;

  /// Creates a new [PrivateEndpointConnectionDataModelResponse].
  /// [id] The ARM Resource Id of the Private Endpoint.
  /// [name] The Name of the Private Endpoint.
  /// [properties] The Private Endpoint Connection properties.
  /// [type] Azure resource type
  PrivateEndpointConnectionDataModelResponse({
    required this.id,
    required this.name,
    this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'properties': ?properties == null ? null : properties!.toMap(),
      'type': type,
    };
  }

  factory PrivateEndpointConnectionDataModelResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionDataModelResponse(
      id: map['id'] as String,
      name: map['name'] as String,
      properties: map['properties'] == null ? null : PrivateEndpointConnectionPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

