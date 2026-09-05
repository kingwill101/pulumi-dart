// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognito_user_in_group_user_in_group_args_doc}
/// The set of arguments for UserInGroup.
/// {@endtemplate}
/// {@macro pulumi_cognito_user_in_group_user_in_group_args_doc}
class UserInGroupArgs {
  /// The name of the group to which the user is to be added.
  final pulumi.Input<String> groupName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The user pool ID of the user and group.
  final pulumi.Input<String> userPoolId;
  /// The username of the user to be added to the group.
  final pulumi.Input<String> username;

  /// Creates a new [UserInGroupArgs].
  /// [groupName] The name of the group to which the user is to be added.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userPoolId] The user pool ID of the user and group.
  /// [username] The username of the user to be added to the group.
  const UserInGroupArgs({
    required this.groupName,
    this.region,
    required this.userPoolId,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': groupName,
      'region': ?region,
      'userPoolId': userPoolId,
      'username': username,
    };
  }

  factory UserInGroupArgs.fromMap(Map<String, dynamic> map) {
    return UserInGroupArgs(
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userPoolId: pulumi.Input.fromValue(map['userPoolId'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
