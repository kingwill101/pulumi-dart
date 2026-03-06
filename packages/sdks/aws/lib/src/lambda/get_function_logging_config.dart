// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionLoggingConfig {
  /// Detail level of the logs your application sends to CloudWatch when using supported logging libraries.
  final pulumi.Input<String> applicationLogLevel;
  /// Format for your function's logs. Valid values: `Text`, `JSON`.
  final pulumi.Input<String> logFormat;
  /// CloudWatch log group your function sends logs to.
  final pulumi.Input<String> logGroup;
  /// Detail level of the Lambda platform event logs sent to CloudWatch.
  final pulumi.Input<String> systemLogLevel;

  /// Creates a new [GetFunctionLoggingConfig].
  /// [applicationLogLevel] Detail level of the logs your application sends to CloudWatch when using supported logging libraries.
  /// [logFormat] Format for your function's logs. Valid values: `Text`, `JSON`.
  /// [logGroup] CloudWatch log group your function sends logs to.
  /// [systemLogLevel] Detail level of the Lambda platform event logs sent to CloudWatch.
  const GetFunctionLoggingConfig({
    required this.applicationLogLevel,
    required this.logFormat,
    required this.logGroup,
    required this.systemLogLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLogLevel': applicationLogLevel,
      'logFormat': logFormat,
      'logGroup': logGroup,
      'systemLogLevel': systemLogLevel,
    };
  }

  factory GetFunctionLoggingConfig.fromMap(Map<String, dynamic> map) {
    return GetFunctionLoggingConfig(
      applicationLogLevel: pulumi.Input.fromValue(map['applicationLogLevel'] as String),
      logFormat: pulumi.Input.fromValue(map['logFormat'] as String),
      logGroup: pulumi.Input.fromValue(map['logGroup'] as String),
      systemLogLevel: pulumi.Input.fromValue(map['systemLogLevel'] as String),
    );
  }
}

