// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_fleet_observability_base_feature_state_response_gkehub_v1beta.dart';

/// Feature state for logging feature.
class FleetObservabilityFleetObservabilityLoggingStateResponseGkehubV1beta {
  /// The base feature state of fleet default log.
  final FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1beta
  defaultLog;

  /// The base feature state of fleet scope log.
  final FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1beta
  scopeLog;

  /// Creates a new [FleetObservabilityFleetObservabilityLoggingStateResponseGkehubV1beta].
  /// [defaultLog] The base feature state of fleet default log.
  /// [scopeLog] The base feature state of fleet scope log.
  FleetObservabilityFleetObservabilityLoggingStateResponseGkehubV1beta({
    required this.defaultLog,
    required this.scopeLog,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLog': defaultLog.toMap(),
      'scopeLog': scopeLog.toMap(),
    };
  }

  factory FleetObservabilityFleetObservabilityLoggingStateResponseGkehubV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return FleetObservabilityFleetObservabilityLoggingStateResponseGkehubV1beta(
      defaultLog:
          FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1beta.fromMap(
            (map['defaultLog'] as Map).cast<String, dynamic>(),
          ),
      scopeLog:
          FleetObservabilityFleetObservabilityBaseFeatureStateResponseGkehubV1beta.fromMap(
            (map['scopeLog'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
