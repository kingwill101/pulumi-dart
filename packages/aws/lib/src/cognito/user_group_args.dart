// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognito_user_group_user_group_args_doc}
/// The set of arguments for UserGroup.
/// {@endtemplate}
/// {@macro pulumi_cognito_user_group_user_group_args_doc}
class UserGroupArgs {
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
  final pulumi.Input<String> userPoolId;

  /// Creates a new [UserGroupArgs].
  /// [description] The description of the user group.
  /// [name] The name of the user group.
  /// [precedence] The precedence of the user group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The ARN of the IAM role to be associated with the user group.
  /// [userPoolId] The user pool ID.
  UserGroupArgs({
    String? description,
    String? name,
    int? precedence,
    String? region,
    String? roleArn,
    required String userPoolId,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       name = pulumi.Input.asOptionalInput<String>(name),
       precedence = pulumi.Input.asOptionalInput<int>(precedence),
       region = pulumi.Input.asOptionalInput<String>(region),
       roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
       userPoolId = pulumi.Input.asInput<String>(userPoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'precedence': ?precedence,
      'region': ?region,
      'roleArn': ?roleArn,
      'userPoolId': userPoolId,
    };
  }

  factory UserGroupArgs.fromMap(Map<String, dynamic> map) {
    return UserGroupArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      precedence: map['precedence'] == null ? null : map['precedence'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      userPoolId: map['userPoolId'] as String,
    );
  }
}
