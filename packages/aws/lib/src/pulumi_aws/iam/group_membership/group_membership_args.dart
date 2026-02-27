// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for GroupMembership.
class GroupMembershipArgs {
  /// The IAM Group name to attach the list of `users` to
  final Input<String> group;

  /// The name to identify the Group Membership
  final Input<String>? name;

  /// A list of IAM User names to associate with the Group
  final Input<List<String>> users;

  GroupMembershipArgs({
    required this.group,
    this.name,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['group'] = group;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['users'] = users;
    return map;
  }

  factory GroupMembershipArgs.fromMap(Map<String, dynamic> map) {
    return GroupMembershipArgs(
      group: Input.asInput<String>(map['group']),
      name: Input.asOptionalInput<String>(map['name']),
      users: Input.asInput<List<String>>(map['users']),
    );
  }
}
