// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_fleet_observability_logging_state_response3.dart';
import 'fleet_observability_fleet_observability_monitoring_state_response3.dart';

/// **FleetObservability**: Hub-wide Feature for FleetObservability feature. state.
class FleetObservabilityFeatureStateResponse3 {
  /// The feature state of default logging.
  final FleetObservabilityFleetObservabilityLoggingStateResponse3 logging;

  /// The feature state of fleet monitoring.
  final FleetObservabilityFleetObservabilityMonitoringStateResponse3 monitoring;

  FleetObservabilityFeatureStateResponse3({
    required this.logging,
    required this.monitoring,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logging'] = logging.toMap();
    map['monitoring'] = monitoring.toMap();
    return map;
  }

  factory FleetObservabilityFeatureStateResponse3.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityFeatureStateResponse3(
      logging:
          FleetObservabilityFleetObservabilityLoggingStateResponse3.fromMap(
              (map['logging'] as Map).cast<String, dynamic>()),
      monitoring:
          FleetObservabilityFleetObservabilityMonitoringStateResponse3.fromMap(
              (map['monitoring'] as Map).cast<String, dynamic>()),
    );
  }
}
