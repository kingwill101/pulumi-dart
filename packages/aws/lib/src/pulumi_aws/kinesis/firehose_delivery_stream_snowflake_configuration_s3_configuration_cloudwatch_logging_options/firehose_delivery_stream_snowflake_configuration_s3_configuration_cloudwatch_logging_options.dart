// ignore_for_file: unused_element, unnecessary_cast

class FirehoseDeliveryStreamSnowflakeConfigurationS3ConfigurationCloudwatchLoggingOptions {
  /// Enables or disables the logging. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? enabled;

  /// The CloudWatch group name for logging. This value is required if <span pulumi-lang-nodejs="`enabled`" pulumi-lang-dotnet="`Enabled`" pulumi-lang-go="`enabled`" pulumi-lang-python="`enabled`" pulumi-lang-yaml="`enabled`" pulumi-lang-java="`enabled`">`enabled`</span> is true.
  final String? logGroupName;

  /// The CloudWatch log stream name for logging. This value is required if <span pulumi-lang-nodejs="`enabled`" pulumi-lang-dotnet="`Enabled`" pulumi-lang-go="`enabled`" pulumi-lang-python="`enabled`" pulumi-lang-yaml="`enabled`" pulumi-lang-java="`enabled`">`enabled`</span> is true.
  final String? logStreamName;

  FirehoseDeliveryStreamSnowflakeConfigurationS3ConfigurationCloudwatchLoggingOptions({
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

  factory FirehoseDeliveryStreamSnowflakeConfigurationS3ConfigurationCloudwatchLoggingOptions.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamSnowflakeConfigurationS3ConfigurationCloudwatchLoggingOptions(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      logGroupName:
          map['logGroupName'] == null ? null : map['logGroupName'] as String,
      logStreamName:
          map['logStreamName'] == null ? null : map['logStreamName'] as String,
    );
  }
}
