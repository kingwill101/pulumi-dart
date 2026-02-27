// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_fleet_observability_logging_state_response_gkehub_v1alpha.dart';
import 'fleet_observability_fleet_observability_monitoring_state_response_gkehub_v1alpha.dart';

/// **FleetObservability**: Hub-wide Feature for FleetObservability feature. state.
class FleetObservabilityFeatureStateResponseGkehubV1alpha {
  /// The feature state of default logging.
  final FleetObservabilityFleetObservabilityLoggingStateResponseGkehubV1alpha
      logging;

  /// The feature state of fleet monitoring.
  final FleetObservabilityFleetObservabilityMonitoringStateResponseGkehubV1alpha
      monitoring;

  FleetObservabilityFeatureStateResponseGkehubV1alpha({
    required this.logging,
    required this.monitoring,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logging'] = logging.toMap();
    map['monitoring'] = monitoring.toMap();
    return map;
  }

  factory FleetObservabilityFeatureStateResponseGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityFeatureStateResponseGkehubV1alpha(
      logging:
          FleetObservabilityFleetObservabilityLoggingStateResponseGkehubV1alpha
              .fromMap((map['logging'] as Map).cast<String, dynamic>()),
      monitoring:
          FleetObservabilityFleetObservabilityMonitoringStateResponseGkehubV1alpha
              .fromMap((map['monitoring'] as Map).cast<String, dynamic>()),
    );
  }
}
