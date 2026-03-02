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
    required this.operationId,
    this.operationLinkId,
    required this.resourceGroupName,
    required this.serviceName,
    required this.tagId,
    required this.workspaceId,
  });

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
      operationId: (map['operationId'] as String).input(),
      operationLinkId: map['operationLinkId'] == null ? null : (map['operationLinkId']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      tagId: (map['tagId'] as String).input(),
      workspaceId: (map['workspaceId'] as String).input(),
    );
  }
}

