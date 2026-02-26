// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_fleet_observability_base_feature_state_response3.dart';

/// Feature state for monitoring feature.
class FleetObservabilityFleetObservabilityMonitoringStateResponse3 {
  /// The base feature state of fleet monitoring feature.
  final FleetObservabilityFleetObservabilityBaseFeatureStateResponse3 state;

  FleetObservabilityFleetObservabilityMonitoringStateResponse3({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['state'] = state.toMap();
    return map;
  }

  factory FleetObservabilityFleetObservabilityMonitoringStateResponse3.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityFleetObservabilityMonitoringStateResponse3(
      state:
          FleetObservabilityFleetObservabilityBaseFeatureStateResponse3.fromMap(
              (map['state'] as Map).cast<String, dynamic>()),
    );
  }
}
