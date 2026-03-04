// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_properties.dart';

/// {@template pulumi_migrate_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_migrate_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// For optimistic concurrency control.
  final pulumi.Input<String>? eTag;

  /// Unique name of a private endpoint connection within a project.
  final pulumi.Input<String>? privateEndpointConnectionName;

  /// Name of the Azure Migrate project.
  final pulumi.Input<String> projectName;

  /// Properties of the private endpoint endpoint connection.
  final pulumi.Input<PrivateEndpointConnectionProperties> properties;

  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [eTag] For optimistic concurrency control.
  /// [privateEndpointConnectionName] Unique name of a private endpoint connection within a project.
  /// [projectName] Name of the Azure Migrate project.
  /// [properties] Properties of the private endpoint endpoint connection.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  PrivateEndpointConnectionArgs({
    this.eTag,
    this.privateEndpointConnectionName,
    required this.projectName,
    required this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eTag': ?eTag,
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'projectName': projectName,
      'properties':
          pulumi.Input.mapInputValue<
            PrivateEndpointConnectionProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      eTag: (() {
        final guardedValue = map['eTag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateEndpointConnectionName: (() {
        final guardedValue = map['privateEndpointConnectionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      properties: pulumi.Input.fromValue(
        PrivateEndpointConnectionProperties.fromMap(
          (map['properties']! as Map).cast<String, dynamic>(),
        ),
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
