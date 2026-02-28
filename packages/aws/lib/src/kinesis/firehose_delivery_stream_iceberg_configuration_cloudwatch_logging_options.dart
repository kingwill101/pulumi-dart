// ignore_for_file: unused_element, unnecessary_cast


class FirehoseDeliveryStreamIcebergConfigurationCloudwatchLoggingOptions {
  /// Enables or disables the logging. Defaults to `false`.
  final bool? enabled;
  /// The CloudWatch group name for logging. This value is required if `enabled` is true.
  final String? logGroupName;
  /// The CloudWatch log stream name for logging. This value is required if `enabled` is true.
  final String? logStreamName;

  /// Creates a new [FirehoseDeliveryStreamIcebergConfigurationCloudwatchLoggingOptions].
  /// [enabled] Enables or disables the logging. Defaults to `false`.
  /// [logGroupName] The CloudWatch group name for logging. This value is required if `enabled` is true.
  /// [logStreamName] The CloudWatch log stream name for logging. This value is required if `enabled` is true.
  FirehoseDeliveryStreamIcebergConfigurationCloudwatchLoggingOptions({
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

  factory FirehoseDeliveryStreamIcebergConfigurationCloudwatchLoggingOptions.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamIcebergConfigurationCloudwatchLoggingOptions(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      logGroupName: map['logGroupName'] == null ? null : map['logGroupName'] as String,
      logStreamName: map['logStreamName'] == null ? null : map['logStreamName'] as String,
    );
  }
}

