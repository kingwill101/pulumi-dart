// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_workspace_tag_operation_link_args_doc}
/// Arguments for getWorkspaceTagOperationLink.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_workspace_tag_operation_link_args_doc}
class GetWorkspaceTagOperationLinkArgs {
  /// Tag-operation link identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> operationLinkId;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Tag identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> tagId;

  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [GetWorkspaceTagOperationLinkArgs].
  /// [operationLinkId] Tag-operation link identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [tagId] Tag identifier. Must be unique in the current API Management service instance.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  GetWorkspaceTagOperationLinkArgs({
    required this.operationLinkId,
    required this.resourceGroupName,
    required this.serviceName,
    required this.tagId,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationLinkId': operationLinkId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'tagId': tagId,
      'workspaceId': workspaceId,
    };
  }

  factory GetWorkspaceTagOperationLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceTagOperationLinkArgs(
      operationLinkId: pulumi.Input.fromValue(map['operationLinkId'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      tagId: pulumi.Input.fromValue(map['tagId'] as String),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
