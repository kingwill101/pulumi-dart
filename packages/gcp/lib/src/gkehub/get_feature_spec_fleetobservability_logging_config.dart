// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_spec_fleetobservability_logging_config_default_config.dart';
import 'get_feature_spec_fleetobservability_logging_config_fleet_scope_logs_config.dart';

class GetFeatureSpecFleetobservabilityLoggingConfig {
  /// Specified if applying the default routing config to logs not specified in other configs.
  final List<GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig>
      defaultConfigs;

  /// Specified if applying the routing config to all logs for all fleet scopes.
  final List<GetFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig>
      fleetScopeLogsConfigs;

  /// Creates a new [GetFeatureSpecFleetobservabilityLoggingConfig].
  /// [defaultConfigs] Specified if applying the default routing config to logs not specified in other configs.
  /// [fleetScopeLogsConfigs] Specified if applying the routing config to all logs for all fleet scopes.
  GetFeatureSpecFleetobservabilityLoggingConfig({
    required this.defaultConfigs,
    required this.fleetScopeLogsConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultConfigs'] = pulumi.Input.encodeList<
        GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig,
        Map<String, dynamic>>(defaultConfigs, (value) => value.toMap());
    map['fleetScopeLogsConfigs'] = pulumi.Input.encodeList<
        GetFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig,
        Map<String, dynamic>>(fleetScopeLogsConfigs, (value) => value.toMap());
    return map;
  }

  factory GetFeatureSpecFleetobservabilityLoggingConfig.fromMap(
      Map<String, dynamic> map) {
    return GetFeatureSpecFleetobservabilityLoggingConfig(
      defaultConfigs: pulumi.Input.decodeList<
              GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig>(
          map['defaultConfigs'],
          (value) => GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig
              .fromMap((value as Map).cast<String, dynamic>())),
      fleetScopeLogsConfigs: pulumi.Input.decodeList<
              GetFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig>(
          map['fleetScopeLogsConfigs'],
          (value) =>
              GetFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
