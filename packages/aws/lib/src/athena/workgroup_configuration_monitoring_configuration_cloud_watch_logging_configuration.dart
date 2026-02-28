// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workgroup_configuration_monitoring_configuration_cloud_watch_logging_configuration_log_type.dart';

class WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfiguration {
  final bool enabled;

  /// Name of the log group in Amazon CloudWatch Logs where you want to publish your logs.
  final String? logGroup;

  /// Prefix for the CloudWatch log stream name.
  final String? logStreamNamePrefix;

  /// Repeatable block defining log types to be delivered to CloudWatch.
  final List<
          WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfigurationLogType>?
      logTypes;

  /// Creates a new [WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfiguration].
  /// [enabled] Required.
  /// [logGroup] Name of the log group in Amazon CloudWatch Logs where you want to publish your logs.
  /// [logStreamNamePrefix] Prefix for the CloudWatch log stream name.
  /// [logTypes] Repeatable block defining log types to be delivered to CloudWatch.
  WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfiguration({
    required this.enabled,
    this.logGroup,
    this.logStreamNamePrefix,
    this.logTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final logGroupValue = logGroup;
    if (logGroupValue != null) {
      map['logGroup'] = logGroupValue;
    }
    final logStreamNamePrefixValue = logStreamNamePrefix;
    if (logStreamNamePrefixValue != null) {
      map['logStreamNamePrefix'] = logStreamNamePrefixValue;
    }
    final logTypesValue = logTypes;
    if (logTypesValue != null) {
      map['logTypes'] = pulumi.Input.encodeList<
          WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfigurationLogType,
          Map<String, dynamic>>(logTypesValue, (value) => value.toMap());
    }
    return map;
  }

  factory WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfiguration.fromMap(
      Map<String, dynamic> map) {
    return WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfiguration(
      enabled: map['enabled'] as bool,
      logGroup: map['logGroup'] == null ? null : map['logGroup'] as String,
      logStreamNamePrefix: map['logStreamNamePrefix'] == null
          ? null
          : map['logStreamNamePrefix'] as String,
      logTypes: map['logTypes'] == null
          ? null
          : pulumi.Input.decodeList<
                  WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfigurationLogType>(
              map['logTypes'],
              (value) =>
                  WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfigurationLogType
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
