// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_routing_config2.dart';

/// LoggingConfig defines the configuration for different types of logs.
class FleetObservabilityLoggingConfig2 {
  /// Specified if applying the default routing config to logs not specified in other configs.
  final FleetObservabilityRoutingConfig2? defaultConfig;

  /// Specified if applying the routing config to all logs for all fleet scopes.
  final FleetObservabilityRoutingConfig2? fleetScopeLogsConfig;

  FleetObservabilityLoggingConfig2({
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

  factory FleetObservabilityLoggingConfig2.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityLoggingConfig2(
      defaultConfig: map['defaultConfig'] == null
          ? null
          : FleetObservabilityRoutingConfig2.fromMap(
              (map['defaultConfig'] as Map).cast<String, dynamic>()),
      fleetScopeLogsConfig: map['fleetScopeLogsConfig'] == null
          ? null
          : FleetObservabilityRoutingConfig2.fromMap(
              (map['fleetScopeLogsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
