// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_fleet_observability_base_feature_state_response2.dart';

/// Feature state for logging feature.
class FleetObservabilityFleetObservabilityLoggingStateResponse2 {
  /// The base feature state of fleet default log.
  final FleetObservabilityFleetObservabilityBaseFeatureStateResponse2
      defaultLog;

  /// The base feature state of fleet scope log.
  final FleetObservabilityFleetObservabilityBaseFeatureStateResponse2 scopeLog;

  FleetObservabilityFleetObservabilityLoggingStateResponse2({
    required this.defaultLog,
    required this.scopeLog,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultLog'] = defaultLog.toMap();
    map['scopeLog'] = scopeLog.toMap();
    return map;
  }

  factory FleetObservabilityFleetObservabilityLoggingStateResponse2.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityFleetObservabilityLoggingStateResponse2(
      defaultLog:
          FleetObservabilityFleetObservabilityBaseFeatureStateResponse2.fromMap(
              (map['defaultLog'] as Map).cast<String, dynamic>()),
      scopeLog:
          FleetObservabilityFleetObservabilityBaseFeatureStateResponse2.fromMap(
              (map['scopeLog'] as Map).cast<String, dynamic>()),
    );
  }
}
