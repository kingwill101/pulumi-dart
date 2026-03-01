// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_logging_config_gkehub_v1alpha.dart';

/// **Fleet Observability**: The Hub-wide input for the FleetObservability feature.
class FleetObservabilityFeatureSpecGkehubV1alpha {
  /// Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  final FleetObservabilityLoggingConfigGkehubV1alpha? loggingConfig;

  /// Creates a new [FleetObservabilityFeatureSpecGkehubV1alpha].
  /// [loggingConfig] Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  FleetObservabilityFeatureSpecGkehubV1alpha({this.loggingConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggingConfig': ?loggingConfig == null ? null : loggingConfig!.toMap(),
    };
  }

  factory FleetObservabilityFeatureSpecGkehubV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return FleetObservabilityFeatureSpecGkehubV1alpha(
      loggingConfig: map['loggingConfig'] == null
          ? null
          : FleetObservabilityLoggingConfigGkehubV1alpha.fromMap(
              (map['loggingConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
