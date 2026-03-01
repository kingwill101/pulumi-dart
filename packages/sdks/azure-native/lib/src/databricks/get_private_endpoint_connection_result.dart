// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_connection_properties_response.dart';

/// Result data returned by getPrivateEndpointConnection.
class GetPrivateEndpointConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource identifier.
  final String id;
  /// The resource name.
  final String name;
  /// The private endpoint connection properties.
  final PrivateEndpointConnectionPropertiesResponse properties;
  /// The resource type.
  final String type;

  /// Creates a new [GetPrivateEndpointConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The resource identifier.
  /// [name] The resource name.
  /// [properties] The private endpoint connection properties.
  /// [type] The resource type.
  GetPrivateEndpointConnectionResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetPrivateEndpointConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: PrivateEndpointConnectionPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

