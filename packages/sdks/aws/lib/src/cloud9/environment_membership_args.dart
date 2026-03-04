// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloud9_environment_membership_environment_membership_args_doc}
/// The set of arguments for EnvironmentMembership.
/// {@endtemplate}
/// {@macro pulumi_cloud9_environment_membership_environment_membership_args_doc}
class EnvironmentMembershipArgs {
  /// The ID of the environment that contains the environment member you want to add.
  final pulumi.Input<String> environmentId;

  /// The type of environment member permissions you want to associate with this environment member. Allowed values are `read-only` and `read-write` .
  final pulumi.Input<String> permissions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Amazon Resource Name (ARN) of the environment member you want to add.
  final pulumi.Input<String> userArn;

  /// Creates a new [EnvironmentMembershipArgs].
  /// [environmentId] The ID of the environment that contains the environment member you want to add.
  /// [permissions] The type of environment member permissions you want to associate with this environment member. Allowed values are `read-only` and `read-write` .
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userArn] The Amazon Resource Name (ARN) of the environment member you want to add.
  EnvironmentMembershipArgs({
    required this.environmentId,
    required this.permissions,
    this.region,
    required this.userArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'permissions': permissions,
      'region': ?region,
      'userArn': userArn,
    };
  }

  factory EnvironmentMembershipArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentMembershipArgs(
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      permissions: pulumi.Input.fromValue(map['permissions'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userArn: pulumi.Input.fromValue(map['userArn'] as String),
    );
  }
}
