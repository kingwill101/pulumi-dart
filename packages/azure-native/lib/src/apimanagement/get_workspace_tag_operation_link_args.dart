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
    required String operationLinkId,
    required String resourceGroupName,
    required String serviceName,
    required String tagId,
    required String workspaceId,
  }) :
      operationLinkId = pulumi.Input.asInput<String>(operationLinkId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      tagId = pulumi.Input.asInput<String>(tagId),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

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
      operationLinkId: map['operationLinkId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      tagId: map['tagId'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

