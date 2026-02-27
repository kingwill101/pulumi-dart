// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_routing_config_gkehub_v1alpha.dart';

/// LoggingConfig defines the configuration for different types of logs.
class FleetObservabilityLoggingConfigGkehubV1alpha {
  /// Specified if applying the default routing config to logs not specified in other configs.
  final FleetObservabilityRoutingConfigGkehubV1alpha? defaultConfig;

  /// Specified if applying the routing config to all logs for all fleet scopes.
  final FleetObservabilityRoutingConfigGkehubV1alpha? fleetScopeLogsConfig;

  FleetObservabilityLoggingConfigGkehubV1alpha({
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

  factory FleetObservabilityLoggingConfigGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityLoggingConfigGkehubV1alpha(
      defaultConfig: map['defaultConfig'] == null
          ? null
          : FleetObservabilityRoutingConfigGkehubV1alpha.fromMap(
              (map['defaultConfig'] as Map).cast<String, dynamic>()),
      fleetScopeLogsConfig: map['fleetScopeLogsConfig'] == null
          ? null
          : FleetObservabilityRoutingConfigGkehubV1alpha.fromMap(
              (map['fleetScopeLogsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
