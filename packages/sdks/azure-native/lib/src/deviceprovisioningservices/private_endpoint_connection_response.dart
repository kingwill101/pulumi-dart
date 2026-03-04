// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_properties_response.dart';
import 'system_data_response.dart';

/// The private endpoint connection of a provisioning service
class PrivateEndpointConnectionResponse {
  /// The resource identifier.
  final pulumi.Input<String> id;

  /// The resource name.
  final pulumi.Input<String> name;

  /// The properties of a private endpoint connection
  final pulumi.Input<PrivateEndpointConnectionPropertiesResponse> properties;

  /// Metadata pertaining to creation and last modification of the resource.
  final pulumi.Input<SystemDataResponse> systemData;

  /// The resource type.
  final pulumi.Input<String> type;

  /// Creates a new [PrivateEndpointConnectionResponse].
  /// [id] The resource identifier.
  /// [name] The resource name.
  /// [properties] The properties of a private endpoint connection
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
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
      'properties':
          pulumi.Input.mapInputValue<
            PrivateEndpointConnectionPropertiesResponse,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'systemData':
          pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(
            systemData,
            (value) => value.toMap(),
          ),
      'type': type,
    };
  }

  factory PrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: pulumi.Input.fromValue(
        PrivateEndpointConnectionPropertiesResponse.fromMap(
          (map['properties']! as Map).cast<String, dynamic>(),
        ),
      ),
      systemData: pulumi.Input.fromValue(
        SystemDataResponse.fromMap(
          (map['systemData']! as Map).cast<String, dynamic>(),
        ),
      ),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
