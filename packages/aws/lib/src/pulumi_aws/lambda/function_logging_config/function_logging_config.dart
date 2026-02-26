// ignore_for_file: unused_element, unnecessary_cast

class FunctionLoggingConfig {
  /// Detail level of application logs. Valid values: `TRACE`, `DEBUG`, `INFO`, `WARN`, `ERROR`, `FATAL`.
  final String? applicationLogLevel;

  /// Log format. Valid values: `Text`, `JSON`.
  final String logFormat;

  /// CloudWatch log group where logs are sent.
  final String? logGroup;

  /// Detail level of Lambda platform logs. Valid values: `DEBUG`, `INFO`, `WARN`.
  final String? systemLogLevel;

  FunctionLoggingConfig({
    this.applicationLogLevel,
    required this.logFormat,
    this.logGroup,
    this.systemLogLevel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applicationLogLevelValue = applicationLogLevel;
    if (applicationLogLevelValue != null) {
      map['applicationLogLevel'] = applicationLogLevelValue;
    }
    map['logFormat'] = logFormat;
    final logGroupValue = logGroup;
    if (logGroupValue != null) {
      map['logGroup'] = logGroupValue;
    }
    final systemLogLevelValue = systemLogLevel;
    if (systemLogLevelValue != null) {
      map['systemLogLevel'] = systemLogLevelValue;
    }
    return map;
  }

  factory FunctionLoggingConfig.fromMap(Map<String, dynamic> map) {
    return FunctionLoggingConfig(
      applicationLogLevel: map['applicationLogLevel'] == null
          ? null
          : map['applicationLogLevel'] as String,
      logFormat: map['logFormat'] as String,
      logGroup: map['logGroup'] == null ? null : map['logGroup'] as String,
      systemLogLevel: map['systemLogLevel'] == null
          ? null
          : map['systemLogLevel'] as String,
    );
  }
}
