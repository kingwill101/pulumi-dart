// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserGroup resources.
class UserGroupState {
  /// The description of the user group.
  final pulumi.Input<String>? description;
  /// The name of the user group.
  final pulumi.Input<String>? name;
  /// The precedence of the user group.
  final pulumi.Input<int>? precedence;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the IAM role to be associated with the user group.
  final pulumi.Input<String>? roleArn;
  /// The user pool ID.
  final pulumi.Input<String>? userPoolId;

  /// Creates a new [UserGroupState].
  /// [description] The description of the user group.
  /// [name] The name of the user group.
  /// [precedence] The precedence of the user group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The ARN of the IAM role to be associated with the user group.
  /// [userPoolId] The user pool ID.
  UserGroupState({
    this.description,
    this.name,
    this.precedence,
    this.region,
    this.roleArn,
    this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'precedence': ?precedence,
      'region': ?region,
      'roleArn': ?roleArn,
      'userPoolId': ?userPoolId,
    };
  }

  factory UserGroupState.fromMap(Map<String, dynamic> map) {
    return UserGroupState(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      precedence: map['precedence'] == null ? null : (map['precedence'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
      userPoolId: map['userPoolId'] == null ? null : (map['userPoolId'] as String).input(),
    );
  }
}

