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
    required pulumi.Output<String> groupName,
    pulumi.Output<String>? region,
    required pulumi.Output<String> userPoolId,
    required pulumi.Output<String> username,
  }) :
      groupName = pulumi.Input.asInput<String>(groupName),
      region = pulumi.Input.asOptionalInput<String>(region),
      userPoolId = pulumi.Input.asInput<String>(userPoolId),
      username = pulumi.Input.asInput<String>(username);

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
      groupName: pulumi.Output.create<String>(map['groupName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      userPoolId: pulumi.Output.create<String>(map['userPoolId'] as String),
      username: pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

