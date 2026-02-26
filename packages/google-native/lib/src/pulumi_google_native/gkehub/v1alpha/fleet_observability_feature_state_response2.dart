// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_fleet_observability_logging_state_response2.dart';
import 'fleet_observability_fleet_observability_monitoring_state_response2.dart';

/// **FleetObservability**: Hub-wide Feature for FleetObservability feature. state.
class FleetObservabilityFeatureStateResponse2 {
  /// The feature state of default logging.
  final FleetObservabilityFleetObservabilityLoggingStateResponse2 logging;

  /// The feature state of fleet monitoring.
  final FleetObservabilityFleetObservabilityMonitoringStateResponse2 monitoring;

  FleetObservabilityFeatureStateResponse2({
    required this.logging,
    required this.monitoring,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logging'] = logging.toMap();
    map['monitoring'] = monitoring.toMap();
    return map;
  }

  factory FleetObservabilityFeatureStateResponse2.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityFeatureStateResponse2(
      logging:
          FleetObservabilityFleetObservabilityLoggingStateResponse2.fromMap(
              (map['logging'] as Map).cast<String, dynamic>()),
      monitoring:
          FleetObservabilityFleetObservabilityMonitoringStateResponse2.fromMap(
              (map['monitoring'] as Map).cast<String, dynamic>()),
    );
  }
}
