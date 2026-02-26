// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_routing_config3.dart';

/// LoggingConfig defines the configuration for different types of logs.
class FleetObservabilityLoggingConfig3 {
  /// Specified if applying the default routing config to logs not specified in other configs.
  final FleetObservabilityRoutingConfig3? defaultConfig;

  /// Specified if applying the routing config to all logs for all fleet scopes.
  final FleetObservabilityRoutingConfig3? fleetScopeLogsConfig;

  FleetObservabilityLoggingConfig3({
    this.defaultConfig,
    this.fleetScopeLogsConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultConfigValue = defaultConfig;
    if (defaultConfigValue != null) {
      map['defaultConfig'] = defaultConfigValue.toMap();
    }
    final fleetScopeLogsConfigValue = fleetScopeLogsConfig;
    if (fleetScopeLogsConfigValue != null) {
      map['fleetScopeLogsConfig'] = fleetScopeLogsConfigValue.toMap();
    }
    return map;
  }

  factory FleetObservabilityLoggingConfig3.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityLoggingConfig3(
      defaultConfig: map['defaultConfig'] == null
          ? null
          : FleetObservabilityRoutingConfig3.fromMap(
              (map['defaultConfig'] as Map).cast<String, dynamic>()),
      fleetScopeLogsConfig: map['fleetScopeLogsConfig'] == null
          ? null
          : FleetObservabilityRoutingConfig3.fromMap(
              (map['fleetScopeLogsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
