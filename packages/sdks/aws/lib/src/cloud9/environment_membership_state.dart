// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvironmentMembership resources.
class EnvironmentMembershipState {
  /// The ID of the environment that contains the environment member you want to add.
  final pulumi.Input<String>? environmentId;
  /// The type of environment member permissions you want to associate with this environment member. Allowed values are `read-only` and `read-write` .
  final pulumi.Input<String>? permissions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of the environment member you want to add.
  final pulumi.Input<String>? userArn;
  /// The user ID in AWS Identity and Access Management (AWS IAM) of the environment member.
  final pulumi.Input<String>? userId;

  /// Creates a new [EnvironmentMembershipState].
  /// [environmentId] The ID of the environment that contains the environment member you want to add.
  /// [permissions] The type of environment member permissions you want to associate with this environment member. Allowed values are `read-only` and `read-write` .
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userArn] The Amazon Resource Name (ARN) of the environment member you want to add.
  /// [userId] The user ID in AWS Identity and Access Management (AWS IAM) of the environment member.
  const EnvironmentMembershipState({
    this.environmentId,
    this.permissions,
    this.region,
    this.userArn,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': ?environmentId,
      'permissions': ?permissions,
      'region': ?region,
      'userArn': ?userArn,
      'userId': ?userId,
    };
  }

  factory EnvironmentMembershipState.fromMap(Map<String, dynamic> map) {
    return EnvironmentMembershipState(
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userArn: (() { final guardedValue = map['userArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

