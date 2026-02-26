// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_fleet_observability_base_feature_state_response2.dart';

/// Feature state for monitoring feature.
class FleetObservabilityFleetObservabilityMonitoringStateResponse2 {
  /// The base feature state of fleet monitoring feature.
  final FleetObservabilityFleetObservabilityBaseFeatureStateResponse2 state;

  FleetObservabilityFleetObservabilityMonitoringStateResponse2({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['state'] = state.toMap();
    return map;
  }

  factory FleetObservabilityFleetObservabilityMonitoringStateResponse2.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityFleetObservabilityMonitoringStateResponse2(
      state:
          FleetObservabilityFleetObservabilityBaseFeatureStateResponse2.fromMap(
              (map['state'] as Map).cast<String, dynamic>()),
    );
  }
}
