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
  const ListWorkspaceNamedValueArgs({
    required this.namedValueId,
    required this.resourceGroupName,
    required this.serviceName,
    required this.workspaceId,
  });

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
      namedValueId: pulumi.Input.fromValue(map['namedValueId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
