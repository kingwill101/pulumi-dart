// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'fleet_observability_feature_error_response2.dart';

/// Base state for fleet observability feature.
class FleetObservabilityFleetObservabilityBaseFeatureStateResponse2 {
  /// The high-level, machine-readable status of this Feature.
  final String code;

  /// Errors after reconciling the monitoring and logging feature if the code is not OK.
  final List<FleetObservabilityFeatureErrorResponse2> errors;

  FleetObservabilityFleetObservabilityBaseFeatureStateResponse2({
    required this.code,
    required this.errors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['errors'] = Input.encodeList<FleetObservabilityFeatureErrorResponse2,
        Map<String, dynamic>>(errors, (value) => value.toMap());
    return map;
  }

  factory FleetObservabilityFleetObservabilityBaseFeatureStateResponse2.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityFleetObservabilityBaseFeatureStateResponse2(
      code: map['code'] as String,
      errors: Input.decodeList<FleetObservabilityFeatureErrorResponse2>(
          map['errors'],
          (value) => FleetObservabilityFeatureErrorResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
