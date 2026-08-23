// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_state_request_body_properties.dart';

/// {@template pulumi_migrate_private_endpoint_connection_controller_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnectionControllerPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_migrate_private_endpoint_connection_controller_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionControllerPrivateEndpointConnectionArgs {
  /// Gets the tag for optimistic concurrency control.
  final pulumi.Input<String>? eTag;
  /// Migrate project name.
  final pulumi.Input<String> migrateProjectName;
  /// Private endpoint connection name.
  final pulumi.Input<String>? peConnectionName;
  /// Properties of Connection state request.
  final pulumi.Input<ConnectionStateRequestBodyProperties>? properties;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrivateEndpointConnectionControllerPrivateEndpointConnectionArgs].
  /// [eTag] Gets the tag for optimistic concurrency control.
  /// [migrateProjectName] Migrate project name.
  /// [peConnectionName] Private endpoint connection name.
  /// [properties] Properties of Connection state request.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  const PrivateEndpointConnectionControllerPrivateEndpointConnectionArgs({
    this.eTag,
    required this.migrateProjectName,
    this.peConnectionName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eTag': ?eTag,
      'migrateProjectName': migrateProjectName,
      'peConnectionName': ?peConnectionName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ConnectionStateRequestBodyProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrivateEndpointConnectionControllerPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionControllerPrivateEndpointConnectionArgs(
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migrateProjectName: pulumi.Input.fromValue(map['migrateProjectName'] as String),
      peConnectionName: (() { final guardedValue = map['peConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionStateRequestBodyProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
