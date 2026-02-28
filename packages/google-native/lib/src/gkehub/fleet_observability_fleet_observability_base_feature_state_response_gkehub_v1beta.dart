// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_feature_error_response_gkehub_v1beta.dart';

/// Base state for fleet observability feature.
class FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1beta {
  /// The high-level, machine-readable status of this Feature.
  final String code;

  /// Errors after reconciling the monitoring and logging feature if the code is not OK.
  final List<FleetObservabilityFeatureErrorResponseGkehubV1beta> errors;

  /// Creates a new [FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1beta].
  /// [code] The high-level, machine-readable status of this Feature.
  /// [errors] Errors after reconciling the monitoring and logging feature if the code is not OK.
  FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1beta({
    required this.code,
    required this.errors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['errors'] = pulumi.Input.encodeList<
        FleetObservabilityFeatureErrorResponseGkehubV1beta,
        Map<String, dynamic>>(errors, (value) => value.toMap());
    return map;
  }

  factory FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1beta(
      code: map['code'] as String,
      errors: pulumi.Input.decodeList<
              FleetObservabilityFeatureErrorResponseGkehubV1beta>(
          map['errors'],
          (value) => FleetObservabilityFeatureErrorResponseGkehubV1beta.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
