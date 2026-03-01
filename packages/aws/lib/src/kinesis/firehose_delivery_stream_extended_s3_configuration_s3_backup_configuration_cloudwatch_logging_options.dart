// ignore_for_file: unused_element, unnecessary_cast

class FirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfigurationCloudwatchLoggingOptions {
  /// Enables or disables the logging. Defaults to `false`.
  final bool? enabled;

  /// The CloudWatch group name for logging. This value is required if `enabled` is true.
  final String? logGroupName;

  /// The CloudWatch log stream name for logging. This value is required if `enabled` is true.
  final String? logStreamName;

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

  factory FirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfigurationCloudwatchLoggingOptions.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirehoseDeliveryStreamExtendedS3ConfigurationS3BackupConfigurationCloudwatchLoggingOptions(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      logGroupName: map['logGroupName'] == null
          ? null
          : map['logGroupName'] as String,
      logStreamName: map['logStreamName'] == null
          ? null
          : map['logStreamName'] as String,
    );
  }
}
