// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_group_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_group_group_args_doc}
class GroupArgs {
  /// GroupId.
  final pulumi.Input<String>? groupId;

  /// GroupName.
  final pulumi.Input<String>? groupName;

  /// Creates a new [GroupArgs].
  /// [groupId] GroupId.
  /// [groupName] GroupName.
  GroupArgs({this.groupId, this.groupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'groupId': ?groupId, 'groupName': ?groupName};
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      groupId: (() {
        final guardedValue = map['groupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupName: (() {
        final guardedValue = map['groupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
