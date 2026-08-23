// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_properties_response.dart';
import 'system_data_response.dart';

/// REST model used to encapsulate the user visible state of a PrivateEndpoint.
class PrivateEndpointConnectionMigrateProjectsControllerMigrateProjectResponse {
  /// Gets the tag for optimistic concurrency control.
  final pulumi.Input<String> eTag;
  /// Relative URL to get this Sites.
  final pulumi.Input<String> id;
  /// Gets the name of the resource.
  final pulumi.Input<String> name;
  /// Gets the properties of the object.
  final pulumi.Input<PrivateEndpointConnectionPropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final pulumi.Input<SystemDataResponse> systemData;
  /// Gets the resource type.
  final pulumi.Input<String> type;

  /// Creates a new [PrivateEndpointConnectionMigrateProjectsControllerMigrateProjectResponse].
  /// [eTag] Gets the tag for optimistic concurrency control.
  /// [id] Relative URL to get this Sites.
  /// [name] Gets the name of the resource.
  /// [properties] Gets the properties of the object.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] Gets the resource type.
  const PrivateEndpointConnectionMigrateProjectsControllerMigrateProjectResponse({
    required this.eTag,
    required this.id,
    required this.name,
    required this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eTag': eTag,
      'id': id,
      'name': name,
      'properties': pulumi.Input.mapInputValue<PrivateEndpointConnectionPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'type': type,
    };
  }

  factory PrivateEndpointConnectionMigrateProjectsControllerMigrateProjectResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionMigrateProjectsControllerMigrateProjectResponse(
      eTag: pulumi.Input.fromValue(map['eTag'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: pulumi.Input.fromValue(PrivateEndpointConnectionPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      systemData: pulumi.Input.fromValue(SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
