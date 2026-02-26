// ignore_for_file: unused_element, unnecessary_cast

class ApiEventConfigLogConfig {
  /// ARN of the IAM role for CloudWatch logs.
  final String cloudwatchLogsRoleArn;

  /// Log level. Valid values: `NONE`, `ERROR`, `ALL`, `INFO`, `DEBUG`.
  final String logLevel;

  ApiEventConfigLogConfig({
    required this.cloudwatchLogsRoleArn,
    required this.logLevel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudwatchLogsRoleArn'] = cloudwatchLogsRoleArn;
    map['logLevel'] = logLevel;
    return map;
  }

  factory ApiEventConfigLogConfig.fromMap(Map<String, dynamic> map) {
    return ApiEventConfigLogConfig(
      cloudwatchLogsRoleArn: map['cloudwatchLogsRoleArn'] as String,
      logLevel: map['logLevel'] as String,
    );
  }
}
