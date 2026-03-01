// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_user_group_membership_user_group_membership_args_doc}
/// The set of arguments for UserGroupMembership.
/// {@endtemplate}
/// {@macro pulumi_iam_user_group_membership_user_group_membership_args_doc}
class UserGroupMembershipArgs {
  /// A list of IAM Groups to add the user to
  final pulumi.Input<List<String>> groups;
  /// The name of the IAM User to add to groups
  final pulumi.Input<String> user;

  /// Creates a new [UserGroupMembershipArgs].
  /// [groups] A list of IAM Groups to add the user to
  /// [user] The name of the IAM User to add to groups
  UserGroupMembershipArgs({
    required List<String> groups,
    required String user,
  }) :
      groups = pulumi.Input.asInput<List<String>>(groups),
      user = pulumi.Input.asInput<String>(user);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': groups,
      'user': user,
    };
  }

  factory UserGroupMembershipArgs.fromMap(Map<String, dynamic> map) {
    return UserGroupMembershipArgs(
      groups: (map['groups'] as List).cast<String>(),
      user: map['user'] as String,
    );
  }
}

