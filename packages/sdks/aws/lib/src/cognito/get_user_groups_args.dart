// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognito_get_user_groups_get_user_groups_args_doc}
/// Arguments for getUserGroups.
/// {@endtemplate}
/// {@macro pulumi_cognito_get_user_groups_get_user_groups_args_doc}
class GetUserGroupsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// User pool the client belongs to.
  final pulumi.Input<String> userPoolId;

  /// Creates a new [GetUserGroupsArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userPoolId] User pool the client belongs to.
  const GetUserGroupsArgs({
    this.region,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'userPoolId': userPoolId,
    };
  }

  factory GetUserGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetUserGroupsArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userPoolId: pulumi.Input.fromValue(map['userPoolId'] as String),
    );
  }
}
