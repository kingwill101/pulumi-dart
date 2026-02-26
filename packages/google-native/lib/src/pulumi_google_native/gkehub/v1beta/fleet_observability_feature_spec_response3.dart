// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_logging_config_response3.dart';

/// **Fleet Observability**: The Hub-wide input for the FleetObservability feature.
class FleetObservabilityFeatureSpecResponse3 {
  /// Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  final FleetObservabilityLoggingConfigResponse3 loggingConfig;

  FleetObservabilityFeatureSpecResponse3({
    required this.loggingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['loggingConfig'] = loggingConfig.toMap();
    return map;
  }

  factory FleetObservabilityFeatureSpecResponse3.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityFeatureSpecResponse3(
      loggingConfig: FleetObservabilityLoggingConfigResponse3.fromMap(
          (map['loggingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
