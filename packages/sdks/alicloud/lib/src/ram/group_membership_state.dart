// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GroupMembership resources.
class GroupMembershipState {
  /// Name of the RAM group. This name can have a string of 1 to 64 characters, must contain only alphanumeric characters or hyphen "-", and must not begin with a hyphen.
  final pulumi.Input<String>? groupName;
  /// Set of user name which will be added to group. Each name can have a string of 1 to 64 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin with a hyphen.
  final pulumi.Input<List<String>>? userNames;

  /// Creates a new [GroupMembershipState].
  /// [groupName] Name of the RAM group. This name can have a string of 1 to 64 characters, must contain only alphanumeric characters or hyphen "-", and must not begin with a hyphen.
  /// [userNames] Set of user name which will be added to group. Each name can have a string of 1 to 64 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin with a hyphen.
  GroupMembershipState({
    pulumi.Output<String>? groupName,
    pulumi.Output<List<String>>? userNames,
  }) :
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      userNames = pulumi.Input.asOptionalInput<List<String>>(userNames);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': ?groupName,
      'userNames': ?userNames,
    };
  }

  factory GroupMembershipState.fromMap(Map<String, dynamic> map) {
    return GroupMembershipState(
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
      userNames: map['userNames'] == null ? null : pulumi.Output.create<List<String>>((map['userNames'] as List).cast<String>()),
    );
  }
}

