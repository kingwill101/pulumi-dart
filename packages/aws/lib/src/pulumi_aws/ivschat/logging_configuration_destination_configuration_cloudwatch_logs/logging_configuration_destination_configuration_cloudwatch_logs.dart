// ignore_for_file: unused_element, unnecessary_cast

class LoggingConfigurationDestinationConfigurationCloudwatchLogs {
  /// Name of the Amazon Cloudwatch Logs destination where chat activity will be logged.
  final String logGroupName;

  LoggingConfigurationDestinationConfigurationCloudwatchLogs({
    required this.logGroupName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logGroupName'] = logGroupName;
    return map;
  }

  factory LoggingConfigurationDestinationConfigurationCloudwatchLogs.fromMap(
      Map<String, dynamic> map) {
    return LoggingConfigurationDestinationConfigurationCloudwatchLogs(
      logGroupName: map['logGroupName'] as String,
    );
  }
}
