// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_workspace_tag_args_doc}
/// The set of arguments for WorkspaceTag.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_tag_args_doc}
class WorkspaceTagArgs {
  /// Tag name.
  final pulumi.Input<String> displayName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Tag identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? tagId;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceTagArgs].
  /// [displayName] Tag name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [tagId] Tag identifier. Must be unique in the current API Management service instance.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  WorkspaceTagArgs({
    required pulumi.Output<String> displayName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    pulumi.Output<String>? tagId,
    required pulumi.Output<String> workspaceId,
  }) :
      displayName = pulumi.Input.asInput<String>(displayName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      tagId = pulumi.Input.asOptionalInput<String>(tagId),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'tagId': ?tagId,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceTagArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceTagArgs(
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      tagId: map['tagId'] == null ? null : pulumi.Output.create<String>(map['tagId'] as String),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

