// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_group_membership_group_membership_args_doc}
/// The set of arguments for GroupMembership.
/// {@endtemplate}
/// {@macro pulumi_iam_group_membership_group_membership_args_doc}
class GroupMembershipArgs {
  /// The IAM Group name to attach the list of `users` to
  final pulumi.Input<String> group;
  /// The name to identify the Group Membership
  final pulumi.Input<String>? name;
  /// A list of IAM User names to associate with the Group
  final pulumi.Input<List<String>> users;

  /// Creates a new [GroupMembershipArgs].
  /// [group] The IAM Group name to attach the list of `users` to
  /// [name] The name to identify the Group Membership
  /// [users] A list of IAM User names to associate with the Group
  GroupMembershipArgs({
    required this.group,
    this.name,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': group,
      'name': ?name,
      'users': users,
    };
  }

  factory GroupMembershipArgs.fromMap(Map<String, dynamic> map) {
    return GroupMembershipArgs(
      group: (map['group'] as String).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      users: ((map['users'] as List).cast<String>()).input(),
    );
  }
}

