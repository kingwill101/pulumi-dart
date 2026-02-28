// ignore_for_file: unused_element, unnecessary_cast

class GetFunctionLoggingConfig {
  /// Detail level of the logs your application sends to CloudWatch when using supported logging libraries.
  final String applicationLogLevel;

  /// Format for your function's logs. Valid values: `Text`, `JSON`.
  final String logFormat;

  /// CloudWatch log group your function sends logs to.
  final String logGroup;

  /// Detail level of the Lambda platform event logs sent to CloudWatch.
  final String systemLogLevel;

  /// Creates a new [GetFunctionLoggingConfig].
  /// [applicationLogLevel] Detail level of the logs your application sends to CloudWatch when using supported logging libraries.
  /// [logFormat] Format for your function's logs. Valid values: `Text`, `JSON`.
  /// [logGroup] CloudWatch log group your function sends logs to.
  /// [systemLogLevel] Detail level of the Lambda platform event logs sent to CloudWatch.
  GetFunctionLoggingConfig({
    required this.applicationLogLevel,
    required this.logFormat,
    required this.logGroup,
    required this.systemLogLevel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationLogLevel'] = applicationLogLevel;
    map['logFormat'] = logFormat;
    map['logGroup'] = logGroup;
    map['systemLogLevel'] = systemLogLevel;
    return map;
  }

  factory GetFunctionLoggingConfig.fromMap(Map<String, dynamic> map) {
    return GetFunctionLoggingConfig(
      applicationLogLevel: map['applicationLogLevel'] as String,
      logFormat: map['logFormat'] as String,
      logGroup: map['logGroup'] as String,
      systemLogLevel: map['systemLogLevel'] as String,
    );
  }
}
