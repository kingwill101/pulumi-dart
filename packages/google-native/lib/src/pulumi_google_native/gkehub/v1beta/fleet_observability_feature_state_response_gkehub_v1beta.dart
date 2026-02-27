// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_fleet_observability_logging_state_response_gkehub_v1beta.dart';
import 'fleet_observability_fleet_observability_monitoring_state_response_gkehub_v1beta.dart';

/// **FleetObservability**: Hub-wide Feature for FleetObservability feature. state.
class FleetObservabilityFeatureStateResponseGkehubV1beta {
  /// The feature state of default logging.
  final FleetObservabilityFleetObservabilityLoggingStateResponseGkehubV1beta
      logging;

  /// The feature state of fleet monitoring.
  final FleetObservabilityFleetObservabilityMonitoringStateResponseGkehubV1beta
      monitoring;

  FleetObservabilityFeatureStateResponseGkehubV1beta({
    required this.logging,
    required this.monitoring,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logging'] = logging.toMap();
    map['monitoring'] = monitoring.toMap();
    return map;
  }

  factory FleetObservabilityFeatureStateResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityFeatureStateResponseGkehubV1beta(
      logging:
          FleetObservabilityFleetObservabilityLoggingStateResponseGkehubV1beta
              .fromMap((map['logging'] as Map).cast<String, dynamic>()),
      monitoring:
          FleetObservabilityFleetObservabilityMonitoringStateResponseGkehubV1beta
              .fromMap((map['monitoring'] as Map).cast<String, dynamic>()),
    );
  }
}
