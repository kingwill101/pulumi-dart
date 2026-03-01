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
  PrivateEndpointConnectionControllerPrivateEndpointConnectionArgs({
    String? eTag,
    required String migrateProjectName,
    String? peConnectionName,
    ConnectionStateRequestBodyProperties? properties,
    required String resourceGroupName,
  }) :
      eTag = pulumi.Input.asOptionalInput<String>(eTag),
      migrateProjectName = pulumi.Input.asInput<String>(migrateProjectName),
      peConnectionName = pulumi.Input.asOptionalInput<String>(peConnectionName),
      properties = pulumi.Input.asOptionalInput<ConnectionStateRequestBodyProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      eTag: map['eTag'] == null ? null : map['eTag'] as String,
      migrateProjectName: map['migrateProjectName'] as String,
      peConnectionName: map['peConnectionName'] == null ? null : map['peConnectionName'] as String,
      properties: map['properties'] == null ? null : ConnectionStateRequestBodyProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

