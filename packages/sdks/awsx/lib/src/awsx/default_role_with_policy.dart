// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_with_policy.dart';

/// Role and policy attachments with default setup unless explicitly skipped or an existing role ARN provided.
class DefaultRoleWithPolicy {
  /// Args to use when creating the role and policies. Can't be specified if `roleArn` is used.
  final pulumi.Input<RoleWithPolicy>? args;
  /// ARN of existing role to use instead of creating a new role. Cannot be used in combination with `args` or `opts`.
  final pulumi.Input<String>? roleArn;
  /// Skips creation of the role if set to `true`.
  final pulumi.Input<bool>? skip;

  /// Creates a new [DefaultRoleWithPolicy].
  /// [args] Args to use when creating the role and policies. Can't be specified if `roleArn` is used.
  /// [roleArn] ARN of existing role to use instead of creating a new role. Cannot be used in combination with `args` or `opts`.
  /// [skip] Skips creation of the role if set to `true`.
  DefaultRoleWithPolicy({
    this.args,
    this.roleArn,
    this.skip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?pulumi.Input.mapOptionalInputValue<RoleWithPolicy, Map<String, dynamic>>(args, (value) => value.toMap()),
      'roleArn': ?roleArn,
      'skip': ?skip,
    };
  }

  factory DefaultRoleWithPolicy.fromMap(Map<String, dynamic> map) {
    return DefaultRoleWithPolicy(
      args: map['args'] == null ? null : (RoleWithPolicy.fromMap((map['args']! as Map).cast<String, dynamic>())).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn']! as String).input(),
      skip: map['skip'] == null ? null : (map['skip']! as bool).input(),
    );
  }
}

