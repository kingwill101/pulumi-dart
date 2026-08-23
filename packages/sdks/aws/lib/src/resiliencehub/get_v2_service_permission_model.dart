// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_v2_service_permission_model_cross_account_role.dart';

class GetV2ServicePermissionModel {
  /// Cross-account IAM role. See `crossAccountRole` Block below.
  final pulumi.Input<List<GetV2ServicePermissionModelCrossAccountRole>> crossAccountRoles;
  /// Name of the IAM role that Resilience Hub assumes for resource discovery.
  final pulumi.Input<String> invokerRoleName;

  /// Creates a new [GetV2ServicePermissionModel].
  /// [crossAccountRoles] Cross-account IAM role. See `crossAccountRole` Block below.
  /// [invokerRoleName] Name of the IAM role that Resilience Hub assumes for resource discovery.
  const GetV2ServicePermissionModel({
    required this.crossAccountRoles,
    required this.invokerRoleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossAccountRoles': pulumi.Input.mapInputValue<List<GetV2ServicePermissionModelCrossAccountRole>, List<Map<String, dynamic>>>(crossAccountRoles, (value) => pulumi.Input.encodeList<GetV2ServicePermissionModelCrossAccountRole, Map<String, dynamic>>(value, (value) => value.toMap())),
      'invokerRoleName': invokerRoleName,
    };
  }

  factory GetV2ServicePermissionModel.fromMap(Map<String, dynamic> map) {
    return GetV2ServicePermissionModel(
      crossAccountRoles: pulumi.Input.fromValue(pulumi.Input.decodeList<GetV2ServicePermissionModelCrossAccountRole>(map['crossAccountRoles']!, (value) => GetV2ServicePermissionModelCrossAccountRole.fromMap((value as Map).cast<String, dynamic>()))),
      invokerRoleName: pulumi.Input.fromValue(map['invokerRoleName'] as String),
    );
  }
}
