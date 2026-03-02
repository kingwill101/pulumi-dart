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
      'properties': pulumi.Input.mapInputValue<PrivateEndpointConnectionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      eTag: map['eTag'] == null ? null : (map['eTag']! as String).input(),
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : (map['privateEndpointConnectionName']! as String).input(),
      projectName: (map['projectName'] as String).input(),
      properties: (PrivateEndpointConnectionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

