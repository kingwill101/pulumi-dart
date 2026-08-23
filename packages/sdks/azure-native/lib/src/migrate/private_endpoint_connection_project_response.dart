// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_properties_response.dart';

/// A private endpoint connection for a project.
class PrivateEndpointConnectionProjectResponse {
  /// For optimistic concurrency control.
  final pulumi.Input<String>? eTag;
  /// Path reference to this private endpoint endpoint connection. /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/privateEndpointConnections/{privateEndpointConnectionName}
  final pulumi.Input<String> id;
  /// Name of the private endpoint endpoint connection.
  final pulumi.Input<String> name;
  /// Properties of the private endpoint endpoint connection.
  final pulumi.Input<PrivateEndpointConnectionPropertiesResponse> properties;
  /// Type of the object = [Microsoft.Migrate/assessmentProjects/privateEndpointConnections].
  final pulumi.Input<String> type;

  /// Creates a new [PrivateEndpointConnectionProjectResponse].
  /// [eTag] For optimistic concurrency control.
  /// [id] Path reference to this private endpoint endpoint connection. /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/privateEndpointConnections/{privateEndpointConnectionName}
  /// [name] Name of the private endpoint endpoint connection.
  /// [properties] Properties of the private endpoint endpoint connection.
  /// [type] Type of the object = [Microsoft.Migrate/assessmentProjects/privateEndpointConnections].
  const PrivateEndpointConnectionProjectResponse({
    this.eTag,
    required this.id,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eTag': ?eTag,
      'id': id,
      'name': name,
      'properties': pulumi.Input.mapInputValue<PrivateEndpointConnectionPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'type': type,
    };
  }

  factory PrivateEndpointConnectionProjectResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionProjectResponse(
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: pulumi.Input.fromValue(PrivateEndpointConnectionPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
