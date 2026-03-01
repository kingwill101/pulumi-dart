// ignore_for_file: unused_element, unnecessary_cast

import 'connection_properties_response.dart';
import 'system_data_response.dart';

/// The private endpoint connection of a Digital Twin.
class PrivateEndpointConnectionResponse {
  /// The resource identifier.
  final String id;
  /// The resource name.
  final String name;
  /// The connection properties.
  final ConnectionPropertiesResponse properties;
  /// Metadata pertaining to creation and last modification of the private endpoint connection.
  final SystemDataResponse systemData;
  /// The resource type.
  final String type;

  /// Creates a new [PrivateEndpointConnectionResponse].
  /// [id] The resource identifier.
  /// [name] The resource name.
  /// [properties] The connection properties.
  /// [systemData] Metadata pertaining to creation and last modification of the private endpoint connection.
  /// [type] The resource type.
  PrivateEndpointConnectionResponse({
    required this.id,
    required this.name,
    required this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory PrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionResponse(
      id: map['id'] as String,
      name: map['name'] as String,
      properties: ConnectionPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

