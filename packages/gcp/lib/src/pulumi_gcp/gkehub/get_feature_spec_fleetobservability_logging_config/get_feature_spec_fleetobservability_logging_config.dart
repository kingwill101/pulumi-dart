// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_feature_spec_fleetobservability_logging_config_default_config/get_feature_spec_fleetobservability_logging_config_default_config.dart';
import '../get_feature_spec_fleetobservability_logging_config_fleet_scope_logs_config/get_feature_spec_fleetobservability_logging_config_fleet_scope_logs_config.dart';

class GetFeatureSpecFleetobservabilityLoggingConfig {
  /// Specified if applying the default routing config to logs not specified in other configs.
  final List<GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig>
      defaultConfigs;

  /// Specified if applying the routing config to all logs for all fleet scopes.
  final List<GetFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig>
      fleetScopeLogsConfigs;

  GetFeatureSpecFleetobservabilityLoggingConfig({
    required this.defaultConfigs,
    required this.fleetScopeLogsConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultConfigs'] = Input.encodeList<
        GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig,
        Map<String, dynamic>>(defaultConfigs, (value) => value.toMap());
    map['fleetScopeLogsConfigs'] = Input.encodeList<
        GetFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig,
        Map<String, dynamic>>(fleetScopeLogsConfigs, (value) => value.toMap());
    return map;
  }

  factory GetFeatureSpecFleetobservabilityLoggingConfig.fromMap(
      Map<String, dynamic> map) {
    return GetFeatureSpecFleetobservabilityLoggingConfig(
      defaultConfigs: Input.decodeList<
              GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig>(
          map['defaultConfigs'],
          (value) => GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig
              .fromMap((value as Map).cast<String, dynamic>())),
      fleetScopeLogsConfigs: Input.decodeList<
              GetFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig>(
          map['fleetScopeLogsConfigs'],
          (value) =>
              GetFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
