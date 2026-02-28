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
    String? directoryId,
    String? region,
    Map<String, String>? tags,
    String? userName,
    String? workspaceId,
  })  : directoryId = pulumi.Input.asOptionalInput<String>(directoryId),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        userName = pulumi.Input.asOptionalInput<String>(userName),
        workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final directoryIdValue = directoryId;
    if (directoryIdValue != null) {
      map['directoryId'] = directoryIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final userNameValue = userName;
    if (userNameValue != null) {
      map['userName'] = userNameValue;
    }
    final workspaceIdValue = workspaceId;
    if (workspaceIdValue != null) {
      map['workspaceId'] = workspaceIdValue;
    }
    return map;
  }

  factory GetWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceArgs(
      directoryId:
          map['directoryId'] == null ? null : map['directoryId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      userName: map['userName'] == null ? null : map['userName'] as String,
      workspaceId:
          map['workspaceId'] == null ? null : map['workspaceId'] as String,
    );
  }
}
