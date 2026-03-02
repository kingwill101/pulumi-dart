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
  final pulumi.Input<String>? region;
  /// The user pool ID of the user and group.
  final pulumi.Input<String> userPoolId;
  /// The username of the user to be added to the group.
  final pulumi.Input<String> username;

  /// Creates a new [UserInGroupArgs].
  /// [groupName] The name of the group to which the user is to be added.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userPoolId] The user pool ID of the user and group.
  /// [username] The username of the user to be added to the group.
  UserInGroupArgs({
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
      groupName: (map['groupName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      userPoolId: (map['userPoolId'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

