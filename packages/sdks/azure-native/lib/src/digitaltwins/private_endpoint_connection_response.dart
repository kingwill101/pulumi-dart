// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_properties_response.dart';
import 'system_data_response.dart';

/// The private endpoint connection of a Digital Twin.
class PrivateEndpointConnectionResponse {
  /// The resource identifier.
  final pulumi.Input<String> id;
  /// The resource name.
  final pulumi.Input<String> name;
  /// The connection properties.
  final pulumi.Input<ConnectionPropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the private endpoint connection.
  final pulumi.Input<SystemDataResponse> systemData;
  /// The resource type.
  final pulumi.Input<String> type;

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
      'properties': pulumi.Input.mapInputValue<ConnectionPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'type': type,
    };
  }

  factory PrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionResponse(
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      properties: (ConnectionPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      systemData: (SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

