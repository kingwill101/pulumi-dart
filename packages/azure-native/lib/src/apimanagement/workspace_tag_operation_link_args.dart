// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_workspace_tag_operation_link_args_doc}
/// The set of arguments for WorkspaceTagOperationLink.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_tag_operation_link_args_doc}
class WorkspaceTagOperationLinkArgs {
  /// Full resource Id of an API operation.
  final pulumi.Input<String> operationId;
  /// Tag-operation link identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? operationLinkId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Tag identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> tagId;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceTagOperationLinkArgs].
  /// [operationId] Full resource Id of an API operation.
  /// [operationLinkId] Tag-operation link identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [tagId] Tag identifier. Must be unique in the current API Management service instance.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  WorkspaceTagOperationLinkArgs({
    required String operationId,
    String? operationLinkId,
    required String resourceGroupName,
    required String serviceName,
    required String tagId,
    required String workspaceId,
  }) :
      operationId = pulumi.Input.asInput<String>(operationId),
      operationLinkId = pulumi.Input.asOptionalInput<String>(operationLinkId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      tagId = pulumi.Input.asInput<String>(tagId),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationId': operationId,
      'operationLinkId': ?operationLinkId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'tagId': tagId,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceTagOperationLinkArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceTagOperationLinkArgs(
      operationId: map['operationId'] as String,
      operationLinkId: map['operationLinkId'] == null ? null : map['operationLinkId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      tagId: map['tagId'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

