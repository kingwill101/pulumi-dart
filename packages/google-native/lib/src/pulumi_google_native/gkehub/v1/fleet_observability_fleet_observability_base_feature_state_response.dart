// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'fleet_observability_feature_error_response.dart';

/// Base state for fleet observability feature.
class FleetObservabilityFleetObservabilityBaseFeatureStateResponse {
  /// The high-level, machine-readable status of this Feature.
  final String code;

  /// Errors after reconciling the monitoring and logging feature if the code is not OK.
  final List<FleetObservabilityFeatureErrorResponse> errors;

  FleetObservabilityFleetObservabilityBaseFeatureStateResponse({
    required this.code,
    required this.errors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['errors'] = Input.encodeList<FleetObservabilityFeatureErrorResponse,
        Map<String, dynamic>>(errors, (value) => value.toMap());
    return map;
  }

  factory FleetObservabilityFleetObservabilityBaseFeatureStateResponse.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityFleetObservabilityBaseFeatureStateResponse(
      code: map['code'] as String,
      errors: Input.decodeList<FleetObservabilityFeatureErrorResponse>(
          map['errors'],
          (value) => FleetObservabilityFeatureErrorResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
