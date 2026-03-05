// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_monitoring_configuration_cloudwatch_logging_configuration_log_type.dart';

class ApplicationMonitoringConfigurationCloudwatchLoggingConfiguration {
  /// Enables CloudWatch logging.
  final pulumi.Input<bool> enabled;
  /// The AWS Key Management Service (KMS) key ARN to encrypt the logs that you store in CloudWatch Logs.
  final pulumi.Input<String>? encryptionKeyArn;
  /// The name of the log group in Amazon CloudWatch Logs where you want to publish your logs.
  final pulumi.Input<String>? logGroupName;
  /// Prefix for the CloudWatch log stream name.
  final pulumi.Input<String>? logStreamNamePrefix;
  /// The types of logs that you want to publish to CloudWatch. If you don't specify any log types, driver STDOUT and STDERR logs will be published to CloudWatch Logs by default. See log_types for more details.
  final pulumi.Input<List<ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogType>>? logTypes;

  /// Creates a new [ApplicationMonitoringConfigurationCloudwatchLoggingConfiguration].
  /// [enabled] Enables CloudWatch logging.
  /// [encryptionKeyArn] The AWS Key Management Service (KMS) key ARN to encrypt the logs that you store in CloudWatch Logs.
  /// [logGroupName] The name of the log group in Amazon CloudWatch Logs where you want to publish your logs.
  /// [logStreamNamePrefix] Prefix for the CloudWatch log stream name.
  /// [logTypes] The types of logs that you want to publish to CloudWatch. If you don't specify any log types, driver STDOUT and STDERR logs will be published to CloudWatch Logs by default. See log_types for more details.
  ApplicationMonitoringConfigurationCloudwatchLoggingConfiguration({
    required this.enabled,
    this.encryptionKeyArn,
    this.logGroupName,
    this.logStreamNamePrefix,
    this.logTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'encryptionKeyArn': ?encryptionKeyArn,
      'logGroupName': ?logGroupName,
      'logStreamNamePrefix': ?logStreamNamePrefix,
      'logTypes': ?pulumi.Input.mapOptionalInputValue<List<ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogType>, List<Map<String, dynamic>>>(logTypes, (value) => pulumi.Input.encodeList<ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogType, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationMonitoringConfigurationCloudwatchLoggingConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationMonitoringConfigurationCloudwatchLoggingConfiguration(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      encryptionKeyArn: (() { final guardedValue = map['encryptionKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logGroupName: (() { final guardedValue = map['logGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logStreamNamePrefix: (() { final guardedValue = map['logStreamNamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logTypes: (() { final guardedValue = map['logTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogType>(guardedValue, (value) => ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogType.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

