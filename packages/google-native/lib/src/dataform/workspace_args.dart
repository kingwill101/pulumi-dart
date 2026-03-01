// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataform_v1beta1_workspace_args_doc}
/// The set of arguments for Workspace.
/// {@endtemplate}
/// {@macro pulumi_dataform_v1beta1_workspace_args_doc}
class WorkspaceArgs {
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;

  /// Required. The ID to use for the workspace, which will become the final component of the workspace's resource name.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceArgs].
  /// [location] Optional.
  /// [project] Optional.
  /// [repositoryId] Required.
  /// [workspaceId] Required. The ID to use for the workspace, which will become the final component of the workspace's resource name.
  WorkspaceArgs({
    String? location,
    String? project,
    required String repositoryId,
    required String workspaceId,
  }) : location = pulumi.Input.asOptionalInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       repositoryId = pulumi.Input.asInput<String>(repositoryId),
       workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'project': ?project,
      'repositoryId': repositoryId,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceArgs(
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      repositoryId: map['repositoryId'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}
