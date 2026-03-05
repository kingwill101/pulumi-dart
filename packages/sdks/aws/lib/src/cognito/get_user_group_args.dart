// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognito_get_user_group_get_user_group_args_doc}
/// Arguments for getUserGroup.
/// {@endtemplate}
/// {@macro pulumi_cognito_get_user_group_get_user_group_args_doc}
class GetUserGroupArgs {
  /// Name of the user group.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// User pool the client belongs to.
  final pulumi.Input<String> userPoolId;

  /// Creates a new [GetUserGroupArgs].
  /// [name] Name of the user group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userPoolId] User pool the client belongs to.
  GetUserGroupArgs({
    required this.name,
    this.region,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
      'userPoolId': userPoolId,
    };
  }

  factory GetUserGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetUserGroupArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userPoolId: pulumi.Input.fromValue(map['userPoolId'] as String),
    );
  }
}

