// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_fleet_observability_logging_state_response.dart';
import 'fleet_observability_fleet_observability_monitoring_state_response.dart';

/// **FleetObservability**: Hub-wide Feature for FleetObservability feature. state.
class FleetObservabilityFeatureStateResponse {
  /// The feature state of default logging.
  final FleetObservabilityFleetObservabilityLoggingStateResponse logging;

  /// The feature state of fleet monitoring.
  final FleetObservabilityFleetObservabilityMonitoringStateResponse monitoring;

  FleetObservabilityFeatureStateResponse({
    required this.logging,
    required this.monitoring,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logging'] = logging.toMap();
    map['monitoring'] = monitoring.toMap();
    return map;
  }

  factory FleetObservabilityFeatureStateResponse.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityFeatureStateResponse(
      logging: FleetObservabilityFleetObservabilityLoggingStateResponse.fromMap(
          (map['logging'] as Map).cast<String, dynamic>()),
      monitoring:
          FleetObservabilityFleetObservabilityMonitoringStateResponse.fromMap(
              (map['monitoring'] as Map).cast<String, dynamic>()),
    );
  }
}
