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
    pulumi.Output<String>? directoryId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? userName,
    pulumi.Output<String>? workspaceId,
  }) :
      directoryId = pulumi.Input.asOptionalInput<String>(directoryId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userName = pulumi.Input.asOptionalInput<String>(userName),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

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
      directoryId: map['directoryId'] == null ? null : pulumi.Output.create<String>(map['directoryId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

