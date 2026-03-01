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
  GroupArgs({
    pulumi.Output<String>? groupId,
    pulumi.Output<String>? groupName,
  }) :
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      groupName = pulumi.Input.asOptionalInput<String>(groupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'groupName': ?groupName,
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
    );
  }
}

