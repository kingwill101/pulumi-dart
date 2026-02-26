// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_logging_config3.dart';

/// **Fleet Observability**: The Hub-wide input for the FleetObservability feature.
class FleetObservabilityFeatureSpec3 {
  /// Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  final FleetObservabilityLoggingConfig3? loggingConfig;

  FleetObservabilityFeatureSpec3({
    this.loggingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] = loggingConfigValue.toMap();
    }
    return map;
  }

  factory FleetObservabilityFeatureSpec3.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityFeatureSpec3(
      loggingConfig: map['loggingConfig'] == null
          ? null
          : FleetObservabilityLoggingConfig3.fromMap(
              (map['loggingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
