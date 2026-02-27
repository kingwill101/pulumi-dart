// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../application_monitoring_configuration_cloudwatch_logging_configuration_log_type/application_monitoring_configuration_cloudwatch_logging_configuration_log_type.dart';

class ApplicationMonitoringConfigurationCloudwatchLoggingConfiguration {
  /// Enables CloudWatch logging.
  final bool enabled;

  /// The AWS Key Management Service (KMS) key ARN to encrypt the logs that you store in CloudWatch Logs.
  final String? encryptionKeyArn;

  /// The name of the log group in Amazon CloudWatch Logs where you want to publish your logs.
  final String? logGroupName;

  /// Prefix for the CloudWatch log stream name.
  final String? logStreamNamePrefix;

  /// The types of logs that you want to publish to CloudWatch. If you don't specify any log types, driver STDOUT and STDERR logs will be published to CloudWatch Logs by default. See log_types for more details.
  final List<
          ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogType>?
      logTypes;

  ApplicationMonitoringConfigurationCloudwatchLoggingConfiguration({
    required this.enabled,
    this.encryptionKeyArn,
    this.logGroupName,
    this.logStreamNamePrefix,
    this.logTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final encryptionKeyArnValue = encryptionKeyArn;
    if (encryptionKeyArnValue != null) {
      map['encryptionKeyArn'] = encryptionKeyArnValue;
    }
    final logGroupNameValue = logGroupName;
    if (logGroupNameValue != null) {
      map['logGroupName'] = logGroupNameValue;
    }
    final logStreamNamePrefixValue = logStreamNamePrefix;
    if (logStreamNamePrefixValue != null) {
      map['logStreamNamePrefix'] = logStreamNamePrefixValue;
    }
    final logTypesValue = logTypes;
    if (logTypesValue != null) {
      map['logTypes'] = pulumi.Input.encodeList<
          ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogType,
          Map<String, dynamic>>(logTypesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ApplicationMonitoringConfigurationCloudwatchLoggingConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ApplicationMonitoringConfigurationCloudwatchLoggingConfiguration(
      enabled: map['enabled'] as bool,
      encryptionKeyArn: map['encryptionKeyArn'] == null
          ? null
          : map['encryptionKeyArn'] as String,
      logGroupName:
          map['logGroupName'] == null ? null : map['logGroupName'] as String,
      logStreamNamePrefix: map['logStreamNamePrefix'] == null
          ? null
          : map['logStreamNamePrefix'] as String,
      logTypes: map['logTypes'] == null
          ? null
          : pulumi.Input.decodeList<
                  ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogType>(
              map['logTypes'],
              (value) =>
                  ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogType
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
