// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_routing_config_response.dart';

/// LoggingConfig defines the configuration for different types of logs.
class FleetObservabilityLoggingConfigResponse {
  /// Specified if applying the default routing config to logs not specified in other configs.
  final FleetObservabilityRoutingConfigResponse defaultConfig;

  /// Specified if applying the routing config to all logs for all fleet scopes.
  final FleetObservabilityRoutingConfigResponse fleetScopeLogsConfig;

  FleetObservabilityLoggingConfigResponse({
    required this.defaultConfig,
    required this.fleetScopeLogsConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultConfig'] = defaultConfig.toMap();
    map['fleetScopeLogsConfig'] = fleetScopeLogsConfig.toMap();
    return map;
  }

  factory FleetObservabilityLoggingConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityLoggingConfigResponse(
      defaultConfig: FleetObservabilityRoutingConfigResponse.fromMap(
          (map['defaultConfig'] as Map).cast<String, dynamic>()),
      fleetScopeLogsConfig: FleetObservabilityRoutingConfigResponse.fromMap(
          (map['fleetScopeLogsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
