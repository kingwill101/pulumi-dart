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
  RdsServiceLinkedRoleState({
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
      arn: map['arn'] == null ? null : (map['arn']! as String).input(),
      roleId: map['roleId'] == null ? null : (map['roleId']! as String).input(),
      roleName: map['roleName'] == null ? null : (map['roleName']! as String).input(),
      serviceName: map['serviceName'] == null ? null : (map['serviceName']! as String).input(),
    );
  }
}

