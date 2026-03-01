// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_private_endpoint_connection_controller_private_endpoint_connection_args_doc}
/// Arguments for getPrivateEndpointConnectionControllerPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_private_endpoint_connection_controller_private_endpoint_connection_args_doc}
class GetPrivateEndpointConnectionControllerPrivateEndpointConnectionArgs {
  /// Migrate project name.
  final pulumi.Input<String> migrateProjectName;
  /// Private endpoint connection name.
  final pulumi.Input<String> peConnectionName;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrivateEndpointConnectionControllerPrivateEndpointConnectionArgs].
  /// [migrateProjectName] Migrate project name.
  /// [peConnectionName] Private endpoint connection name.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  GetPrivateEndpointConnectionControllerPrivateEndpointConnectionArgs({
    required String migrateProjectName,
    required String peConnectionName,
    required String resourceGroupName,
  }) :
      migrateProjectName = pulumi.Input.asInput<String>(migrateProjectName),
      peConnectionName = pulumi.Input.asInput<String>(peConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrateProjectName': migrateProjectName,
      'peConnectionName': peConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateEndpointConnectionControllerPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionControllerPrivateEndpointConnectionArgs(
      migrateProjectName: map['migrateProjectName'] as String,
      peConnectionName: map['peConnectionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

