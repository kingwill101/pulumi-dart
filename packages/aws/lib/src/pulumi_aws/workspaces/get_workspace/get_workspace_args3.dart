// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getWorkspace.
class GetWorkspaceArgs3 {
  /// ID of the directory for the WorkSpace. You have to specify `user_name` along with `directory_id`. You cannot combine this parameter with `workspace_id`.
  final Input<String>? directoryId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Tags for the WorkSpace.
  final Input<Map<String, String>>? tags;

  /// User name of the user for the WorkSpace. This user name must exist in the directory for the WorkSpace. You cannot combine this parameter with `workspace_id`.
  final Input<String>? userName;

  /// ID of the WorkSpace. You cannot combine this parameter with `directory_id`.
  final Input<String>? workspaceId;

  GetWorkspaceArgs3({
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

  factory GetWorkspaceArgs3.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceArgs3(
      directoryId: Input.asOptionalInput<String>(map['directoryId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      userName: Input.asOptionalInput<String>(map['userName']),
      workspaceId: Input.asOptionalInput<String>(map['workspaceId']),
    );
  }
}
