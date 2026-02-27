// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_feature_error_response_gkehub_v1alpha.dart';

/// Base state for fleet observability feature.
class FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1alpha {
  /// The high-level, machine-readable status of this Feature.
  final String code;

  /// Errors after reconciling the monitoring and logging feature if the code is not OK.
  final List<FleetObservabilityFeatureErrorResponseGkehubV1alpha> errors;

  FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1alpha({
    required this.code,
    required this.errors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['errors'] = pulumi.Input.encodeList<
        FleetObservabilityFeatureErrorResponseGkehubV1alpha,
        Map<String, dynamic>>(errors, (value) => value.toMap());
    return map;
  }

  factory FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1alpha(
      code: map['code'] as String,
      errors: pulumi.Input.decodeList<
              FleetObservabilityFeatureErrorResponseGkehubV1alpha>(
          map['errors'],
          (value) =>
              FleetObservabilityFeatureErrorResponseGkehubV1alpha.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
