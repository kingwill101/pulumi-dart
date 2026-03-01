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
    pulumi.Output<String>? groupName,
    pulumi.Output<String>? region,
    pulumi.Output<String>? userPoolId,
    pulumi.Output<String>? username,
  }) :
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      region = pulumi.Input.asOptionalInput<String>(region),
      userPoolId = pulumi.Input.asOptionalInput<String>(userPoolId),
      username = pulumi.Input.asOptionalInput<String>(username);

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
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      userPoolId: map['userPoolId'] == null ? null : pulumi.Output.create<String>(map['userPoolId'] as String),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

