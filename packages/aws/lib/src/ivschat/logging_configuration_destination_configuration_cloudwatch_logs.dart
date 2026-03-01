// ignore_for_file: unused_element, unnecessary_cast

class LoggingConfigurationDestinationConfigurationCloudwatchLogs {
  /// Name of the Amazon Cloudwatch Logs destination where chat activity will be logged.
  final String logGroupName;

  /// Creates a new [LoggingConfigurationDestinationConfigurationCloudwatchLogs].
  /// [logGroupName] Name of the Amazon Cloudwatch Logs destination where chat activity will be logged.
  LoggingConfigurationDestinationConfigurationCloudwatchLogs({
    required this.logGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'logGroupName': logGroupName};
  }

  factory LoggingConfigurationDestinationConfigurationCloudwatchLogs.fromMap(
    Map<String, dynamic> map,
  ) {
    return LoggingConfigurationDestinationConfigurationCloudwatchLogs(
      logGroupName: map['logGroupName'] as String,
    );
  }
}
