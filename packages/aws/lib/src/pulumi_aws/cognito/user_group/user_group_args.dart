// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for UserGroup.
class UserGroupArgs {
  /// The description of the user group.
  final Input<String>? description;

  /// The name of the user group.
  final Input<String>? name;

  /// The precedence of the user group.
  final Input<int>? precedence;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ARN of the IAM role to be associated with the user group.
  final Input<String>? roleArn;

  /// The user pool ID.
  final Input<String> userPoolId;

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
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      precedence: Input.asOptionalInput<int>(map['precedence']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asOptionalInput<String>(map['roleArn']),
      userPoolId: Input.asInput<String>(map['userPoolId']),
    );
  }
}
