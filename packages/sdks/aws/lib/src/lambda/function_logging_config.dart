// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionLoggingConfig {
  /// Detail level of application logs. Valid values: `TRACE`, `DEBUG`, `INFO`, `WARN`, `ERROR`, `FATAL`.
  final pulumi.Input<String>? applicationLogLevel;
  /// Log format. Valid values: `Text`, `JSON`.
  final pulumi.Input<String> logFormat;
  /// CloudWatch log group where logs are sent.
  final pulumi.Input<String>? logGroup;
  /// Detail level of Lambda platform logs. Valid values: `DEBUG`, `INFO`, `WARN`.
  final pulumi.Input<String>? systemLogLevel;

  /// Creates a new [FunctionLoggingConfig].
  /// [applicationLogLevel] Detail level of application logs. Valid values: `TRACE`, `DEBUG`, `INFO`, `WARN`, `ERROR`, `FATAL`.
  /// [logFormat] Log format. Valid values: `Text`, `JSON`.
  /// [logGroup] CloudWatch log group where logs are sent.
  /// [systemLogLevel] Detail level of Lambda platform logs. Valid values: `DEBUG`, `INFO`, `WARN`.
  FunctionLoggingConfig({
    this.applicationLogLevel,
    required this.logFormat,
    this.logGroup,
    this.systemLogLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLogLevel': ?applicationLogLevel,
      'logFormat': logFormat,
      'logGroup': ?logGroup,
      'systemLogLevel': ?systemLogLevel,
    };
  }

  factory FunctionLoggingConfig.fromMap(Map<String, dynamic> map) {
    return FunctionLoggingConfig(
      applicationLogLevel: map['applicationLogLevel'] == null ? null : ((map['applicationLogLevel'] as String).input()).input(),
      logFormat: (map['logFormat'] as String).input(),
      logGroup: map['logGroup'] == null ? null : ((map['logGroup'] as String).input()).input(),
      systemLogLevel: map['systemLogLevel'] == null ? null : ((map['systemLogLevel'] as String).input()).input(),
    );
  }
}

