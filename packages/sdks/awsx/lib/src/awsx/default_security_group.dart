// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_group.dart';

/// Security Group with default setup unless explicitly skipped or an existing security group id provided.
class DefaultSecurityGroup {
  /// Args to use when creating the security group. Can't be specified if `securityGroupId` is used.
  final pulumi.Input<SecurityGroup>? args;
  /// Id of existing security group to use instead of creating a new security group. Cannot be used in combination with `args` or `opts`.
  final pulumi.Input<String>? securityGroupId;
  /// Skips creation of the security group if set to `true`.
  final pulumi.Input<bool>? skip;

  /// Creates a new [DefaultSecurityGroup].
  /// [args] Args to use when creating the security group. Can't be specified if `securityGroupId` is used.
  /// [securityGroupId] Id of existing security group to use instead of creating a new security group. Cannot be used in combination with `args` or `opts`.
  /// [skip] Skips creation of the security group if set to `true`.
  DefaultSecurityGroup({
    this.args,
    this.securityGroupId,
    this.skip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?pulumi.Input.mapOptionalInputValue<SecurityGroup, Map<String, dynamic>>(args, (value) => value.toMap()),
      'securityGroupId': ?securityGroupId,
      'skip': ?skip,
    };
  }

  factory DefaultSecurityGroup.fromMap(Map<String, dynamic> map) {
    return DefaultSecurityGroup(
      args: map['args'] == null ? null : (SecurityGroup.fromMap((map['args']! as Map).cast<String, dynamic>())).input(),
      securityGroupId: map['securityGroupId'] == null ? null : (map['securityGroupId']! as String).input(),
      skip: map['skip'] == null ? null : (map['skip']! as bool).input(),
    );
  }
}

