// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_logging_config_response2.dart';

/// **Fleet Observability**: The Hub-wide input for the FleetObservability feature.
class FleetObservabilityFeatureSpecResponse2 {
  /// Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  final FleetObservabilityLoggingConfigResponse2 loggingConfig;

  FleetObservabilityFeatureSpecResponse2({
    required this.loggingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['loggingConfig'] = loggingConfig.toMap();
    return map;
  }

  factory FleetObservabilityFeatureSpecResponse2.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityFeatureSpecResponse2(
      loggingConfig: FleetObservabilityLoggingConfigResponse2.fromMap(
          (map['loggingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
