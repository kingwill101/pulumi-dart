// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_routing_config_response3.dart';

/// LoggingConfig defines the configuration for different types of logs.
class FleetObservabilityLoggingConfigResponse3 {
  /// Specified if applying the default routing config to logs not specified in other configs.
  final FleetObservabilityRoutingConfigResponse3 defaultConfig;

  /// Specified if applying the routing config to all logs for all fleet scopes.
  final FleetObservabilityRoutingConfigResponse3 fleetScopeLogsConfig;

  FleetObservabilityLoggingConfigResponse3({
    required this.defaultConfig,
    required this.fleetScopeLogsConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultConfig'] = defaultConfig.toMap();
    map['fleetScopeLogsConfig'] = fleetScopeLogsConfig.toMap();
    return map;
  }

  factory FleetObservabilityLoggingConfigResponse3.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityLoggingConfigResponse3(
      defaultConfig: FleetObservabilityRoutingConfigResponse3.fromMap(
          (map['defaultConfig'] as Map).cast<String, dynamic>()),
      fleetScopeLogsConfig: FleetObservabilityRoutingConfigResponse3.fromMap(
          (map['fleetScopeLogsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
