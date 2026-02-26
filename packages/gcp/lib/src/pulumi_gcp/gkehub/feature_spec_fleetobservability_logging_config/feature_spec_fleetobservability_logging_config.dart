// ignore_for_file: unused_element, unnecessary_cast

import '../feature_spec_fleetobservability_logging_config_default_config/feature_spec_fleetobservability_logging_config_default_config.dart';
import '../feature_spec_fleetobservability_logging_config_fleet_scope_logs_config/feature_spec_fleetobservability_logging_config_fleet_scope_logs_config.dart';

class FeatureSpecFleetobservabilityLoggingConfig {
  /// Specified if applying the default routing config to logs not specified in other configs.
  /// Structure is documented below.
  final FeatureSpecFleetobservabilityLoggingConfigDefaultConfig? defaultConfig;

  /// Specified if applying the routing config to all logs for all fleet scopes.
  /// Structure is documented below.
  final FeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig?
      fleetScopeLogsConfig;

  FeatureSpecFleetobservabilityLoggingConfig({
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

  factory FeatureSpecFleetobservabilityLoggingConfig.fromMap(
      Map<String, dynamic> map) {
    return FeatureSpecFleetobservabilityLoggingConfig(
      defaultConfig: map['defaultConfig'] == null
          ? null
          : FeatureSpecFleetobservabilityLoggingConfigDefaultConfig.fromMap(
              (map['defaultConfig'] as Map).cast<String, dynamic>()),
      fleetScopeLogsConfig: map['fleetScopeLogsConfig'] == null
          ? null
          : FeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig
              .fromMap(
                  (map['fleetScopeLogsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
