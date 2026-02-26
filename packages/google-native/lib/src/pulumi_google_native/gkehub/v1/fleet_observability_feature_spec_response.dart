// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_logging_config_response.dart';

/// **Fleet Observability**: The Hub-wide input for the FleetObservability feature.
class FleetObservabilityFeatureSpecResponse {
  /// Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  final FleetObservabilityLoggingConfigResponse loggingConfig;

  FleetObservabilityFeatureSpecResponse({
    required this.loggingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['loggingConfig'] = loggingConfig.toMap();
    return map;
  }

  factory FleetObservabilityFeatureSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityFeatureSpecResponse(
      loggingConfig: FleetObservabilityLoggingConfigResponse.fromMap(
          (map['loggingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
