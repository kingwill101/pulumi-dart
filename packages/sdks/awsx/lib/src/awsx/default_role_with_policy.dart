// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_with_policy.dart';

/// Role and policy attachments with default setup unless explicitly skipped or an existing role ARN provided.
class DefaultRoleWithPolicy {
  /// Args to use when creating the role and policies. Can't be specified if `roleArn` is used.
  final pulumi.Input<RoleWithPolicy?>? args;
  /// ARN of existing role to use instead of creating a new role. Cannot be used in combination with `args` or `opts`.
  final pulumi.Input<String?>? roleArn;
  /// Skips creation of the role if set to `true`.
  final pulumi.Input<bool?>? skip;

  /// Creates a new [DefaultRoleWithPolicy].
  /// [args] Args to use when creating the role and policies. Can't be specified if `roleArn` is used.
  /// [roleArn] ARN of existing role to use instead of creating a new role. Cannot be used in combination with `args` or `opts`.
  /// [skip] Skips creation of the role if set to `true`.
  const DefaultRoleWithPolicy({
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
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoleWithPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skip: (() { final guardedValue = map['skip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
