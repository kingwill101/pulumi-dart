// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EnvironmentMembership.
class EnvironmentMembershipArgs {
  /// The ID of the environment that contains the environment member you want to add.
  final pulumi.Input<String> environmentId;

  /// The type of environment member permissions you want to associate with this environment member. Allowed values are `read-only` and `read-write` .
  final pulumi.Input<String> permissions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Amazon Resource Name (ARN) of the environment member you want to add.
  final pulumi.Input<String> userArn;

  EnvironmentMembershipArgs({
    required this.environmentId,
    required this.permissions,
    this.region,
    required this.userArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environmentId'] = environmentId;
    map['permissions'] = permissions;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['userArn'] = userArn;
    return map;
  }

  factory EnvironmentMembershipArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentMembershipArgs(
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      permissions: pulumi.Input.asInput<String>(map['permissions']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      userArn: pulumi.Input.asInput<String>(map['userArn']),
    );
  }
}
