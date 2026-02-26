// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_logging_config2.dart';

/// **Fleet Observability**: The Hub-wide input for the FleetObservability feature.
class FleetObservabilityFeatureSpec2 {
  /// Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  final FleetObservabilityLoggingConfig2? loggingConfig;

  FleetObservabilityFeatureSpec2({
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

  factory FleetObservabilityFeatureSpec2.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityFeatureSpec2(
      loggingConfig: map['loggingConfig'] == null
          ? null
          : FleetObservabilityLoggingConfig2.fromMap(
              (map['loggingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
