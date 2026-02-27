// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for UserGroup.
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

  UserGroupArgs({
    this.description,
    this.name,
    this.precedence,
    this.region,
    this.roleArn,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final precedenceValue = precedence;
    if (precedenceValue != null) {
      map['precedence'] = precedenceValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    map['userPoolId'] = userPoolId;
    return map;
  }

  factory UserGroupArgs.fromMap(Map<String, dynamic> map) {
    return UserGroupArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      precedence: pulumi.Input.asOptionalInput<int>(map['precedence']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asOptionalInput<String>(map['roleArn']),
      userPoolId: pulumi.Input.asInput<String>(map['userPoolId']),
    );
  }
}
