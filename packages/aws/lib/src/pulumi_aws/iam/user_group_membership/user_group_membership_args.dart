// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for UserGroupMembership.
class UserGroupMembershipArgs {
  /// A list of IAM Groups to add the user to
  final pulumi.Input<List<String>> groups;

  /// The name of the IAM User to add to groups
  final pulumi.Input<String> user;

  UserGroupMembershipArgs({
    required this.groups,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groups'] = groups;
    map['user'] = user;
    return map;
  }

  factory UserGroupMembershipArgs.fromMap(Map<String, dynamic> map) {
    return UserGroupMembershipArgs(
      groups: pulumi.Input.asInput<List<String>>(map['groups']),
      user: pulumi.Input.asInput<String>(map['user']),
    );
  }
}
