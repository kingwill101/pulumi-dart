// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workgroup_configuration_monitoring_configuration_cloud_watch_logging_configuration_log_type.dart';

class WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfiguration {
  final pulumi.Input<bool> enabled;
  /// Name of the log group in Amazon CloudWatch Logs where you want to publish your logs.
  final pulumi.Input<String>? logGroup;
  /// Prefix for the CloudWatch log stream name.
  final pulumi.Input<String>? logStreamNamePrefix;
  /// Repeatable block defining log types to be delivered to CloudWatch.
  final pulumi.Input<List<WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfigurationLogType>>? logTypes;

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
    return <String, dynamic>{
      'enabled': enabled,
      'logGroup': ?logGroup,
      'logStreamNamePrefix': ?logStreamNamePrefix,
      'logTypes': ?pulumi.Input.mapOptionalInputValue<List<WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfigurationLogType>, List<Map<String, dynamic>>>(logTypes, (value) => pulumi.Input.encodeList<WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfigurationLogType, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfiguration(
      enabled: (map['enabled'] as bool).input(),
      logGroup: map['logGroup'] == null ? null : (map['logGroup'] as String).input(),
      logStreamNamePrefix: map['logStreamNamePrefix'] == null ? null : (map['logStreamNamePrefix'] as String).input(),
      logTypes: map['logTypes'] == null ? null : (pulumi.Input.decodeList<WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfigurationLogType>(map['logTypes'], (value) => WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfigurationLogType.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

