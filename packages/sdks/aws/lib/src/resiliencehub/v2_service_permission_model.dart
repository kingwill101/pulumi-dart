// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_service_permission_model_cross_account_role.dart';

class V2ServicePermissionModel {
  /// Cross-account IAM role. See `crossAccountRole` Block below.
  final pulumi.Input<List<V2ServicePermissionModelCrossAccountRole>>? crossAccountRoles;
  /// Name of the IAM role that Resilience Hub assumes for resource discovery.
  final pulumi.Input<String> invokerRoleName;

  /// Creates a new [V2ServicePermissionModel].
  /// [crossAccountRoles] Cross-account IAM role. See `crossAccountRole` Block below.
  /// [invokerRoleName] Name of the IAM role that Resilience Hub assumes for resource discovery.
  const V2ServicePermissionModel({
    this.crossAccountRoles,
    required this.invokerRoleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossAccountRoles': ?pulumi.Input.mapOptionalInputValue<List<V2ServicePermissionModelCrossAccountRole>, List<Map<String, dynamic>>>(crossAccountRoles, (value) => pulumi.Input.encodeList<V2ServicePermissionModelCrossAccountRole, Map<String, dynamic>>(value, (value) => value.toMap())),
      'invokerRoleName': invokerRoleName,
    };
  }

  factory V2ServicePermissionModel.fromMap(Map<String, dynamic> map) {
    return V2ServicePermissionModel(
      crossAccountRoles: (() { final guardedValue = map['crossAccountRoles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2ServicePermissionModelCrossAccountRole>(guardedValue, (value) => V2ServicePermissionModelCrossAccountRole.fromMap((value as Map).cast<String, dynamic>()))); })(),
      invokerRoleName: pulumi.Input.fromValue(map['invokerRoleName'] as String),
    );
  }
}
