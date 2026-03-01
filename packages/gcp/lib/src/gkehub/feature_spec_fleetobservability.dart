// ignore_for_file: unused_element, unnecessary_cast

import 'feature_spec_fleetobservability_logging_config.dart';

class FeatureSpecFleetobservability {
  /// Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  /// Structure is documented below.
  final FeatureSpecFleetobservabilityLoggingConfig? loggingConfig;

  /// Creates a new [FeatureSpecFleetobservability].
  /// [loggingConfig] Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet.
  FeatureSpecFleetobservability({this.loggingConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggingConfig': ?loggingConfig == null ? null : loggingConfig!.toMap(),
    };
  }

  factory FeatureSpecFleetobservability.fromMap(Map<String, dynamic> map) {
    return FeatureSpecFleetobservability(
      loggingConfig: map['loggingConfig'] == null
          ? null
          : FeatureSpecFleetobservabilityLoggingConfig.fromMap(
              (map['loggingConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
