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
  const FunctionLoggingConfig({
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
      applicationLogLevel: (() { final guardedValue = map['applicationLogLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logFormat: pulumi.Input.fromValue(map['logFormat'] as String),
      logGroup: (() { final guardedValue = map['logGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemLogLevel: (() { final guardedValue = map['systemLogLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
