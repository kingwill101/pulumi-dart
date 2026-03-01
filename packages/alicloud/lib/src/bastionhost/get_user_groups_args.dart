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
    List<String>? ids,
    required String instanceId,
    String? nameRegex,
    String? outputFile,
    String? userGroupName,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      userGroupName = pulumi.Input.asOptionalInput<String>(userGroupName);

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
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      userGroupName: map['userGroupName'] == null ? null : map['userGroupName'] as String,
    );
  }
}

