// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_logging_config_response_gkehub_v1beta.dart';

/// **Fleet Observability**: The Hub-wide input for the FleetObservability feature.
class FleetObservabilityFeatureSpecResponseGkehubV1beta {
  /// Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  final FleetObservabilityLoggingConfigResponseGkehubV1beta loggingConfig;

  FleetObservabilityFeatureSpecResponseGkehubV1beta({
    required this.loggingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['loggingConfig'] = loggingConfig.toMap();
    return map;
  }

  factory FleetObservabilityFeatureSpecResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityFeatureSpecResponseGkehubV1beta(
      loggingConfig:
          FleetObservabilityLoggingConfigResponseGkehubV1beta.fromMap(
              (map['loggingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
