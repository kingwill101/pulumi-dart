// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RdsServiceLinkedRole resources.
class RdsServiceLinkedRoleState {
  /// The Alibaba Cloud Resource Name (ARN) of the role.
  final pulumi.Input<String>? arn;
  /// The ID of the role.
  final pulumi.Input<String>? roleId;
  /// The name of the role.
  final pulumi.Input<String>? roleName;
  /// The product name for SLR. RDS can automatically create the following service-linked roles: `AliyunServiceRoleForRdsPgsqlOnEcs`, `AliyunServiceRoleForRDSProxyOnEcs`.
  final pulumi.Input<String>? serviceName;

  /// Creates a new [RdsServiceLinkedRoleState].
  /// [arn] The Alibaba Cloud Resource Name (ARN) of the role.
  /// [roleId] The ID of the role.
  /// [roleName] The name of the role.
  /// [serviceName] The product name for SLR. RDS can automatically create the following service-linked roles: `AliyunServiceRoleForRdsPgsqlOnEcs`, `AliyunServiceRoleForRDSProxyOnEcs`.
  const RdsServiceLinkedRoleState({
    this.arn,
    this.roleId,
    this.roleName,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'roleId': ?roleId,
      'roleName': ?roleName,
      'serviceName': ?serviceName,
    };
  }

  factory RdsServiceLinkedRoleState.fromMap(Map<String, dynamic> map) {
    return RdsServiceLinkedRoleState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleId: (() { final guardedValue = map['roleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

