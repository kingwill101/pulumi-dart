// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_list_workspace_named_value_args_doc}
/// Arguments for listWorkspaceNamedValue.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_list_workspace_named_value_args_doc}
class ListWorkspaceNamedValueArgs {
  /// Identifier of the NamedValue.
  final pulumi.Input<String> namedValueId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [ListWorkspaceNamedValueArgs].
  /// [namedValueId] Identifier of the NamedValue.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  ListWorkspaceNamedValueArgs({
    required pulumi.Output<String> namedValueId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> workspaceId,
  }) :
      namedValueId = pulumi.Input.asInput<String>(namedValueId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namedValueId': namedValueId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'workspaceId': workspaceId,
    };
  }

  factory ListWorkspaceNamedValueArgs.fromMap(Map<String, dynamic> map) {
    return ListWorkspaceNamedValueArgs(
      namedValueId: pulumi.Output.create<String>(map['namedValueId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

