// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWorkspace.
class GetWorkspaceWorkspacesArgs {
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

  GetWorkspaceWorkspacesArgs({
    this.directoryId,
    this.region,
    this.tags,
    this.userName,
    this.workspaceId,
  });

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

  factory GetWorkspaceWorkspacesArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceWorkspacesArgs(
      directoryId: pulumi.Input.asOptionalInput<String>(map['directoryId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      userName: pulumi.Input.asOptionalInput<String>(map['userName']),
      workspaceId: pulumi.Input.asOptionalInput<String>(map['workspaceId']),
    );
  }
}
