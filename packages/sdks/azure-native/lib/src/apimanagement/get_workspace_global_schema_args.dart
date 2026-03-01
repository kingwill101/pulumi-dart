// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_workspace_global_schema_args_doc}
/// Arguments for getWorkspaceGlobalSchema.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_workspace_global_schema_args_doc}
class GetWorkspaceGlobalSchemaArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Schema id identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> schemaId;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [GetWorkspaceGlobalSchemaArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schemaId] Schema id identifier. Must be unique in the current API Management service instance.
  /// [serviceName] The name of the API Management service.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  GetWorkspaceGlobalSchemaArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> schemaId,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> workspaceId,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaId = pulumi.Input.asInput<String>(schemaId),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'schemaId': schemaId,
      'serviceName': serviceName,
      'workspaceId': workspaceId,
    };
  }

  factory GetWorkspaceGlobalSchemaArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceGlobalSchemaArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schemaId: pulumi.Output.create<String>(map['schemaId'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

