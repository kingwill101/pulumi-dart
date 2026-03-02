// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workspaces_get_workspace_get_workspace_args_doc}
/// Arguments for getWorkspace.
/// {@endtemplate}
/// {@macro pulumi_workspaces_get_workspace_get_workspace_args_doc}
class GetWorkspaceArgs {
  /// ID of the directory for the WorkSpace. You have to specify `user_name` along with `directory_id`. You cannot combine this parameter with `workspace_id`.
  final pulumi.Input<String>? directoryId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tags for the WorkSpace.
  final pulumi.Input<Map<String, String>>? tags;
  /// User name of the user for the WorkSpace. This user name must exist in the directory for the WorkSpace. You cannot combine this parameter with `workspace_id`.
  final pulumi.Input<String>? userName;
  /// ID of the WorkSpace. You cannot combine this parameter with `directory_id`.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [GetWorkspaceArgs].
  /// [directoryId] ID of the directory for the WorkSpace. You have to specify `user_name` along with `directory_id`. You cannot combine this parameter with `workspace_id`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags for the WorkSpace.
  /// [userName] User name of the user for the WorkSpace. This user name must exist in the directory for the WorkSpace. You cannot combine this parameter with `workspace_id`.
  /// [workspaceId] ID of the WorkSpace. You cannot combine this parameter with `directory_id`.
  GetWorkspaceArgs({
    this.directoryId,
    this.region,
    this.tags,
    this.userName,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryId': ?directoryId,
      'region': ?region,
      'tags': ?tags,
      'userName': ?userName,
      'workspaceId': ?workspaceId,
    };
  }

  factory GetWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceArgs(
      directoryId: map['directoryId'] == null ? null : ((map['directoryId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      userName: map['userName'] == null ? null : ((map['userName'] as String).input()).input(),
      workspaceId: map['workspaceId'] == null ? null : ((map['workspaceId'] as String).input()).input(),
    );
  }
}

