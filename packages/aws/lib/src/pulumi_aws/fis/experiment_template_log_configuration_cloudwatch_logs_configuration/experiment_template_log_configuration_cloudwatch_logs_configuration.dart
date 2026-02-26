// ignore_for_file: unused_element, unnecessary_cast

class ExperimentTemplateLogConfigurationCloudwatchLogsConfiguration {
  /// The Amazon Resource Name (ARN) of the destination Amazon CloudWatch Logs log group. The ARN must end with `:*`
  final String logGroupArn;

  ExperimentTemplateLogConfigurationCloudwatchLogsConfiguration({
    required this.logGroupArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logGroupArn'] = logGroupArn;
    return map;
  }

  factory ExperimentTemplateLogConfigurationCloudwatchLogsConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ExperimentTemplateLogConfigurationCloudwatchLogsConfiguration(
      logGroupArn: map['logGroupArn'] as String,
    );
  }
}
