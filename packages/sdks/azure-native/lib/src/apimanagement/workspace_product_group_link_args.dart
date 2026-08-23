// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_workspace_product_group_link_args_doc}
/// The set of arguments for WorkspaceProductGroupLink.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_product_group_link_args_doc}
class WorkspaceProductGroupLinkArgs {
  /// Full resource Id of a group.
  final pulumi.Input<String> groupId;
  /// Product-Group link identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? groupLinkId;
  /// Product identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> productId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceProductGroupLinkArgs].
  /// [groupId] Full resource Id of a group.
  /// [groupLinkId] Product-Group link identifier. Must be unique in the current API Management service instance.
  /// [productId] Product identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  const WorkspaceProductGroupLinkArgs({
    required this.groupId,
    this.groupLinkId,
    required this.productId,
    required this.resourceGroupName,
    required this.serviceName,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'groupLinkId': ?groupLinkId,
      'productId': productId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceProductGroupLinkArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceProductGroupLinkArgs(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      groupLinkId: (() { final guardedValue = map['groupLinkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productId: pulumi.Input.fromValue(map['productId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
