// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bastionhost_get_user_groups_get_user_groups_args_doc}
/// Arguments for getUserGroups.
/// {@endtemplate}
/// {@macro pulumi_bastionhost_get_user_groups_get_user_groups_args_doc}
class GetUserGroupsArgs {
  /// A list of User Group self IDs.
  final pulumi.Input<List<String>>? ids;
  /// Specify the New Group of the Bastion Host of Instance Id.
  final pulumi.Input<String> instanceId;
  /// A regex string to filter results by User Group name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Specify the New Group Name. Supports up to 128 Characters.
  final pulumi.Input<String>? userGroupName;

  /// Creates a new [GetUserGroupsArgs].
  /// [ids] A list of User Group self IDs.
  /// [instanceId] Specify the New Group of the Bastion Host of Instance Id.
  /// [nameRegex] A regex string to filter results by User Group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [userGroupName] Specify the New Group Name. Supports up to 128 Characters.
  GetUserGroupsArgs({
    this.ids,
    required this.instanceId,
    this.nameRegex,
    this.outputFile,
    this.userGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'userGroupName': ?userGroupName,
    };
  }

  factory GetUserGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetUserGroupsArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userGroupName: (() { final guardedValue = map['userGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

