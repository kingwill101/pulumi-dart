// ignore_for_file: unused_element, unnecessary_cast

class FirehoseDeliveryStreamExtendedS3ConfigurationCloudwatchLoggingOptions {
  /// Enables or disables the logging. Defaults to `false`.
  final bool? enabled;

  /// The CloudWatch group name for logging. This value is required if `enabled` is true.
  final String? logGroupName;

  /// The CloudWatch log stream name for logging. This value is required if `enabled` is true.
  final String? logStreamName;

  FirehoseDeliveryStreamExtendedS3ConfigurationCloudwatchLoggingOptions({
    this.enabled,
    this.logGroupName,
    this.logStreamName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final logGroupNameValue = logGroupName;
    if (logGroupNameValue != null) {
      map['logGroupName'] = logGroupNameValue;
    }
    final logStreamNameValue = logStreamName;
    if (logStreamNameValue != null) {
      map['logStreamName'] = logStreamNameValue;
    }
    return map;
  }

  factory FirehoseDeliveryStreamExtendedS3ConfigurationCloudwatchLoggingOptions.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamExtendedS3ConfigurationCloudwatchLoggingOptions(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      logGroupName:
          map['logGroupName'] == null ? null : map['logGroupName'] as String,
      logStreamName:
          map['logStreamName'] == null ? null : map['logStreamName'] as String,
    );
  }
}
