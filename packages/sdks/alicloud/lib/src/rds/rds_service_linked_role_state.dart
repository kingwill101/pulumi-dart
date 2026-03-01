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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? roleId,
    pulumi.Output<String>? roleName,
    pulumi.Output<String>? serviceName,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      roleId = pulumi.Input.asOptionalInput<String>(roleId),
      roleName = pulumi.Input.asOptionalInput<String>(roleName),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      roleId: map['roleId'] == null ? null : pulumi.Output.create<String>(map['roleId'] as String),
      roleName: map['roleName'] == null ? null : pulumi.Output.create<String>(map['roleName'] as String),
      serviceName: map['serviceName'] == null ? null : pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

