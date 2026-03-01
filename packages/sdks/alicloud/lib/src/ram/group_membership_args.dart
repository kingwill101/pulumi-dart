// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_group_membership_group_membership_args_doc}
/// The set of arguments for GroupMembership.
/// {@endtemplate}
/// {@macro pulumi_ram_group_membership_group_membership_args_doc}
class GroupMembershipArgs {
  /// Name of the RAM group. This name can have a string of 1 to 64 characters, must contain only alphanumeric characters or hyphen "-", and must not begin with a hyphen.
  final pulumi.Input<String> groupName;
  /// Set of user name which will be added to group. Each name can have a string of 1 to 64 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin with a hyphen.
  final pulumi.Input<List<String>> userNames;

  /// Creates a new [GroupMembershipArgs].
  /// [groupName] Name of the RAM group. This name can have a string of 1 to 64 characters, must contain only alphanumeric characters or hyphen "-", and must not begin with a hyphen.
  /// [userNames] Set of user name which will be added to group. Each name can have a string of 1 to 64 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin with a hyphen.
  GroupMembershipArgs({
    required pulumi.Output<String> groupName,
    required pulumi.Output<List<String>> userNames,
  }) :
      groupName = pulumi.Input.asInput<String>(groupName),
      userNames = pulumi.Input.asInput<List<String>>(userNames);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': groupName,
      'userNames': userNames,
    };
  }

  factory GroupMembershipArgs.fromMap(Map<String, dynamic> map) {
    return GroupMembershipArgs(
      groupName: pulumi.Output.create<String>(map['groupName'] as String),
      userNames: pulumi.Output.create<List<String>>((map['userNames'] as List).cast<String>()),
    );
  }
}

