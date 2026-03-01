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
  WorkspaceProductGroupLinkArgs({
    required pulumi.Output<String> groupId,
    pulumi.Output<String>? groupLinkId,
    required pulumi.Output<String> productId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> workspaceId,
  }) :
      groupId = pulumi.Input.asInput<String>(groupId),
      groupLinkId = pulumi.Input.asOptionalInput<String>(groupLinkId),
      productId = pulumi.Input.asInput<String>(productId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

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
      groupId: pulumi.Output.create<String>(map['groupId'] as String),
      groupLinkId: map['groupLinkId'] == null ? null : pulumi.Output.create<String>(map['groupLinkId'] as String),
      productId: pulumi.Output.create<String>(map['productId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

