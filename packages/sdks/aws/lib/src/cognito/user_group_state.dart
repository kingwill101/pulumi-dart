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
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<int>? precedence,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<String>? userPoolId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      precedence = pulumi.Input.asOptionalInput<int>(precedence),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      userPoolId = pulumi.Input.asOptionalInput<String>(userPoolId);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      precedence: map['precedence'] == null ? null : pulumi.Output.create<int>(map['precedence'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      userPoolId: map['userPoolId'] == null ? null : pulumi.Output.create<String>(map['userPoolId'] as String),
    );
  }
}

