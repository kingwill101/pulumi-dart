// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionRevisionServiceConfigTelemetryConfigActualLoggingConfig {
  /// Log level for application logs emitted by the web function.
  final pulumi.Input<String> applicationLogLevel;
  /// Name of the Amazon CloudWatch Logs log group the web function sends logs to.
  final pulumi.Input<String> logGroup;
  /// Log level for system logs emitted by the Lambda runtime.
  final pulumi.Input<String> systemLogLevel;

  /// Creates a new [FunctionRevisionServiceConfigTelemetryConfigActualLoggingConfig].
  /// [applicationLogLevel] Log level for application logs emitted by the web function.
  /// [logGroup] Name of the Amazon CloudWatch Logs log group the web function sends logs to.
  /// [systemLogLevel] Log level for system logs emitted by the Lambda runtime.
  const FunctionRevisionServiceConfigTelemetryConfigActualLoggingConfig({
    required this.applicationLogLevel,
    required this.logGroup,
    required this.systemLogLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLogLevel': applicationLogLevel,
      'logGroup': logGroup,
      'systemLogLevel': systemLogLevel,
    };
  }

  factory FunctionRevisionServiceConfigTelemetryConfigActualLoggingConfig.fromMap(Map<String, dynamic> map) {
    return FunctionRevisionServiceConfigTelemetryConfigActualLoggingConfig(
      applicationLogLevel: pulumi.Input.fromValue(map['applicationLogLevel'] as String),
      logGroup: pulumi.Input.fromValue(map['logGroup'] as String),
      systemLogLevel: pulumi.Input.fromValue(map['systemLogLevel'] as String),
    );
  }
}
