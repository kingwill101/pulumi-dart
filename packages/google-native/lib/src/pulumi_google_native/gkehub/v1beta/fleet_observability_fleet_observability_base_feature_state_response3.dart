// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'fleet_observability_feature_error_response3.dart';

/// Base state for fleet observability feature.
class FleetObservabilityFleetObservabilityBaseFeatureStateResponse3 {
  /// The high-level, machine-readable status of this Feature.
  final String code;

  /// Errors after reconciling the monitoring and logging feature if the code is not OK.
  final List<FleetObservabilityFeatureErrorResponse3> errors;

  FleetObservabilityFleetObservabilityBaseFeatureStateResponse3({
    required this.code,
    required this.errors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['errors'] = Input.encodeList<FleetObservabilityFeatureErrorResponse3,
        Map<String, dynamic>>(errors, (value) => value.toMap());
    return map;
  }

  factory FleetObservabilityFleetObservabilityBaseFeatureStateResponse3.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityFleetObservabilityBaseFeatureStateResponse3(
      code: map['code'] as String,
      errors: Input.decodeList<FleetObservabilityFeatureErrorResponse3>(
          map['errors'],
          (value) => FleetObservabilityFeatureErrorResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
