// ignore_for_file: unused_element, unnecessary_cast

class ApiEventConfigLogConfig {
  /// ARN of the IAM role for CloudWatch logs.
  final String cloudwatchLogsRoleArn;

  /// Log level. Valid values: `NONE`, `ERROR`, `ALL`, `INFO`, `DEBUG`.
  final String logLevel;

  /// Creates a new [ApiEventConfigLogConfig].
  /// [cloudwatchLogsRoleArn] ARN of the IAM role for CloudWatch logs.
  /// [logLevel] Log level. Valid values: `NONE`, `ERROR`, `ALL`, `INFO`, `DEBUG`.
  ApiEventConfigLogConfig({
    required this.cloudwatchLogsRoleArn,
    required this.logLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogsRoleArn': cloudwatchLogsRoleArn,
      'logLevel': logLevel,
    };
  }

  factory ApiEventConfigLogConfig.fromMap(Map<String, dynamic> map) {
    return ApiEventConfigLogConfig(
      cloudwatchLogsRoleArn: map['cloudwatchLogsRoleArn'] as String,
      logLevel: map['logLevel'] as String,
    );
  }
}
