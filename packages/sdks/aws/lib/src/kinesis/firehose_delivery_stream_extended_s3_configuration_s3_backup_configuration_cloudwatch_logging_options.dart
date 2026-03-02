// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfigurationCloudwatchLoggingOptions {
  /// Enables or disables the logging. Defaults to `false`.
  final pulumi.Input<bool>? enabled;
  /// The CloudWatch group name for logging. This value is required if `enabled` is true.
  final pulumi.Input<String>? logGroupName;
  /// The CloudWatch log stream name for logging. This value is required if `enabled` is true.
  final pulumi.Input<String>? logStreamName;

  /// Creates a new [FirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfigurationCloudwatchLoggingOptions].
  /// [enabled] Enables or disables the logging. Defaults to `false`.
  /// [logGroupName] The CloudWatch group name for logging. This value is required if `enabled` is true.
  /// [logStreamName] The CloudWatch log stream name for logging. This value is required if `enabled` is true.
  FirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfigurationCloudwatchLoggingOptions({
    this.enabled,
    this.logGroupName,
    this.logStreamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'logGroupName': ?logGroupName,
      'logStreamName': ?logStreamName,
    };
  }

  factory FirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfigurationCloudwatchLoggingOptions.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfigurationCloudwatchLoggingOptions(
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
      logGroupName: map['logGroupName'] == null ? null : ((map['logGroupName'] as String).input()).input(),
      logStreamName: map['logStreamName'] == null ? null : ((map['logStreamName'] as String).input()).input(),
    );
  }
}

