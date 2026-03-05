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
      operationId: pulumi.Input.fromValue(map['operationId'] as String),
      operationLinkId: (() { final guardedValue = map['operationLinkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      tagId: pulumi.Input.fromValue(map['tagId'] as String),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}

