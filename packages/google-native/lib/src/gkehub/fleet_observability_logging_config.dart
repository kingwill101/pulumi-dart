// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_observability_routing_config.dart';

/// LoggingConfig defines the configuration for different types of logs.
class FleetObservabilityLoggingConfig {
  /// Specified if applying the default routing config to logs not specified in other configs.
  final FleetObservabilityRoutingConfig? defaultConfig;

  /// Specified if applying the routing config to all logs for all fleet scopes.
  final FleetObservabilityRoutingConfig? fleetScopeLogsConfig;

  /// Creates a new [FleetObservabilityLoggingConfig].
  /// [defaultConfig] Specified if applying the default routing config to logs not specified in other configs.
  /// [fleetScopeLogsConfig] Specified if applying the routing config to all logs for all fleet scopes.
  FleetObservabilityLoggingConfig({
    this.defaultConfig,
    this.fleetScopeLogsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultConfig': ?defaultConfig == null ? null : defaultConfig!.toMap(),
      'fleetScopeLogsConfig': ?fleetScopeLogsConfig == null
          ? null
          : fleetScopeLogsConfig!.toMap(),
    };
  }

  factory FleetObservabilityLoggingConfig.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityLoggingConfig(
      defaultConfig: map['defaultConfig'] == null
          ? null
          : FleetObservabilityRoutingConfig.fromMap(
              (map['defaultConfig'] as Map).cast<String, dynamic>(),
            ),
      fleetScopeLogsConfig: map['fleetScopeLogsConfig'] == null
          ? null
          : FleetObservabilityRoutingConfig.fromMap(
              (map['fleetScopeLogsConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
