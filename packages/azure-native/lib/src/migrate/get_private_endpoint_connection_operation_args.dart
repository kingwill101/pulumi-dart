// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_private_endpoint_connection_operation_args_doc}
/// Arguments for getPrivateEndpointConnectionOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_private_endpoint_connection_operation_args_doc}
class GetPrivateEndpointConnectionOperationArgs {
  /// Private endpoint connection ARM name
  final pulumi.Input<String> privateEndpointConnectionName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrivateEndpointConnectionOperationArgs].
  /// [privateEndpointConnectionName] Private endpoint connection ARM name
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPrivateEndpointConnectionOperationArgs({
    required String privateEndpointConnectionName,
    required String projectName,
    required String resourceGroupName,
  }) :
      privateEndpointConnectionName = pulumi.Input.asInput<String>(privateEndpointConnectionName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateEndpointConnectionOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionOperationArgs(
      privateEndpointConnectionName: map['privateEndpointConnectionName'] as String,
      projectName: map['projectName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

