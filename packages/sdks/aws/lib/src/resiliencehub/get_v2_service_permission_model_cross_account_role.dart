// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetV2ServicePermissionModelCrossAccountRole {
  /// ARN of the IAM Role for the profile.
  final pulumi.Input<String> crossAccountRoleArn;
  /// External ID used for assuming the cross-account role.
  final pulumi.Input<String> externalId;

  /// Creates a new [GetV2ServicePermissionModelCrossAccountRole].
  /// [crossAccountRoleArn] ARN of the IAM Role for the profile.
  /// [externalId] External ID used for assuming the cross-account role.
  const GetV2ServicePermissionModelCrossAccountRole({
    required this.crossAccountRoleArn,
    required this.externalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossAccountRoleArn': crossAccountRoleArn,
      'externalId': externalId,
    };
  }

  factory GetV2ServicePermissionModelCrossAccountRole.fromMap(Map<String, dynamic> map) {
    return GetV2ServicePermissionModelCrossAccountRole(
      crossAccountRoleArn: pulumi.Input.fromValue(map['crossAccountRoleArn'] as String),
      externalId: pulumi.Input.fromValue(map['externalId'] as String),
    );
  }
}
