// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The kubernetes resource limits and requests used to restrict or reserve resource usage.
class K8sResourceRequirements {
  /// Limits for a kubernetes resource type (e.g 'cpu', 'memory'). The 'cpu' request must be less than or equal to 'cpu' limit. Default 'cpu' is 2, minimum is 1. Default 'memory' is '4Gi', minimum is '2Gi. If sku.tier is GeneralPurpose, maximum 'cpu' is 24 and maximum 'memory' is '128Gi'.
  final pulumi.Input<Map<String, String>?>? limits;
  /// Requests for a kubernetes resource type (e.g 'cpu', 'memory'). The 'cpu' request must be less than or equal to 'cpu' limit. Default 'cpu' is 2, minimum is 1. Default 'memory' is '4Gi', minimum is '2Gi. If sku.tier is GeneralPurpose, maximum 'cpu' is 24 and maximum 'memory' is '128Gi'.
  final pulumi.Input<Map<String, String>?>? requests;

  /// Creates a new [K8sResourceRequirements].
  /// [limits] Limits for a kubernetes resource type (e.g 'cpu', 'memory'). The 'cpu' request must be less than or equal to 'cpu' limit. Default 'cpu' is 2, minimum is 1. Default 'memory' is '4Gi', minimum is '2Gi. If sku.tier is GeneralPurpose, maximum 'cpu' is 24 and maximum 'memory' is '128Gi'.
  /// [requests] Requests for a kubernetes resource type (e.g 'cpu', 'memory'). The 'cpu' request must be less than or equal to 'cpu' limit. Default 'cpu' is 2, minimum is 1. Default 'memory' is '4Gi', minimum is '2Gi. If sku.tier is GeneralPurpose, maximum 'cpu' is 24 and maximum 'memory' is '128Gi'.
  const K8sResourceRequirements({
    this.limits,
    this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': ?limits,
      'requests': ?requests,
    };
  }

  factory K8sResourceRequirements.fromMap(Map<String, dynamic> map) {
    return K8sResourceRequirements(
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      requests: (() { final guardedValue = map['requests']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
