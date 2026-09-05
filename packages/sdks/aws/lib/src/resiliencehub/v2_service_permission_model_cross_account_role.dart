// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2ServicePermissionModelCrossAccountRole {
  /// ARN of the IAM Role for the profile.
  final pulumi.Input<String> crossAccountRoleArn;
  /// External ID used for assuming the cross-account role.
  final pulumi.Input<String?>? externalId;

  /// Creates a new [V2ServicePermissionModelCrossAccountRole].
  /// [crossAccountRoleArn] ARN of the IAM Role for the profile.
  /// [externalId] External ID used for assuming the cross-account role.
  const V2ServicePermissionModelCrossAccountRole({
    required this.crossAccountRoleArn,
    this.externalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossAccountRoleArn': crossAccountRoleArn,
      'externalId': ?externalId,
    };
  }

  factory V2ServicePermissionModelCrossAccountRole.fromMap(Map<String, dynamic> map) {
    return V2ServicePermissionModelCrossAccountRole(
      crossAccountRoleArn: pulumi.Input.fromValue(map['crossAccountRoleArn'] as String),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
