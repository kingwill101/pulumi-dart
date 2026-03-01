// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_fleet_observability_base_feature_state_response_gkehub_v1alpha.dart';

/// Feature state for monitoring feature.
class FleetObservabilityFleetObservabilityMonitoringStateResponseGkehubV1alpha {
  /// The base feature state of fleet monitoring feature.
  final FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1alpha
  state;

  /// Creates a new [FleetObservabilityFleetObservabilityMonitoringStateResponseGkehubV1alpha].
  /// [state] The base feature state of fleet monitoring feature.
  FleetObservabilityFleetObservabilityMonitoringStateResponseGkehubV1alpha({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'state': state.toMap()};
  }

  factory FleetObservabilityFleetObservabilityMonitoringStateResponseGkehubV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return FleetObservabilityFleetObservabilityMonitoringStateResponseGkehubV1alpha(
      state:
          FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1alpha.fromMap(
            (map['state'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
