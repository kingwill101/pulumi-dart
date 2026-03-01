// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_logging_config_gkehub_v1beta.dart';

/// **Fleet Observability**: The Hub-wide input for the FleetObservability feature.
class FleetObservabilityFeatureSpecGkehubV1beta {
  /// Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  final FleetObservabilityLoggingConfigGkehubV1beta? loggingConfig;

  /// Creates a new [FleetObservabilityFeatureSpecGkehubV1beta].
  /// [loggingConfig] Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  FleetObservabilityFeatureSpecGkehubV1beta({this.loggingConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggingConfig': ?loggingConfig == null ? null : loggingConfig!.toMap(),
    };
  }

  factory FleetObservabilityFeatureSpecGkehubV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return FleetObservabilityFeatureSpecGkehubV1beta(
      loggingConfig: map['loggingConfig'] == null
          ? null
          : FleetObservabilityLoggingConfigGkehubV1beta.fromMap(
              (map['loggingConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
