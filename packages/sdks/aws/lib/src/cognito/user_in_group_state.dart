// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserInGroup resources.
class UserInGroupState {
  /// The name of the group to which the user is to be added.
  final pulumi.Input<String>? groupName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The user pool ID of the user and group.
  final pulumi.Input<String>? userPoolId;
  /// The username of the user to be added to the group.
  final pulumi.Input<String>? username;

  /// Creates a new [UserInGroupState].
  /// [groupName] The name of the group to which the user is to be added.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userPoolId] The user pool ID of the user and group.
  /// [username] The username of the user to be added to the group.
  UserInGroupState({
    this.groupName,
    this.region,
    this.userPoolId,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': ?groupName,
      'region': ?region,
      'userPoolId': ?userPoolId,
      'username': ?username,
    };
  }

  factory UserInGroupState.fromMap(Map<String, dynamic> map) {
    return UserInGroupState(
      groupName: map['groupName'] == null ? null : (map['groupName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      userPoolId: map['userPoolId'] == null ? null : (map['userPoolId'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

