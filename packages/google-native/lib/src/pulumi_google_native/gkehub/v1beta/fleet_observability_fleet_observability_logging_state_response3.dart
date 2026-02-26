// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_fleet_observability_base_feature_state_response3.dart';

/// Feature state for logging feature.
class FleetObservabilityFleetObservabilityLoggingStateResponse3 {
  /// The base feature state of fleet default log.
  final FleetObservabilityFleetObservabilityBaseFeatureStateResponse3
      defaultLog;

  /// The base feature state of fleet scope log.
  final FleetObservabilityFleetObservabilityBaseFeatureStateResponse3 scopeLog;

  FleetObservabilityFleetObservabilityLoggingStateResponse3({
    required this.defaultLog,
    required this.scopeLog,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultLog'] = defaultLog.toMap();
    map['scopeLog'] = scopeLog.toMap();
    return map;
  }

  factory FleetObservabilityFleetObservabilityLoggingStateResponse3.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityFleetObservabilityLoggingStateResponse3(
      defaultLog:
          FleetObservabilityFleetObservabilityBaseFeatureStateResponse3.fromMap(
              (map['defaultLog'] as Map).cast<String, dynamic>()),
      scopeLog:
          FleetObservabilityFleetObservabilityBaseFeatureStateResponse3.fromMap(
              (map['scopeLog'] as Map).cast<String, dynamic>()),
    );
  }
}
