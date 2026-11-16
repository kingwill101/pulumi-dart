// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionRevisionServiceConfigTelemetryConfigLoggingConfig {
  /// Log level for application logs emitted by the web function.
  final pulumi.Input<String?>? applicationLogLevel;
  /// Name of the Amazon CloudWatch Logs log group the web function sends logs to.
  final pulumi.Input<String?>? logGroup;
  /// Log level for system logs emitted by the Lambda runtime.
  final pulumi.Input<String?>? systemLogLevel;

  /// Creates a new [FunctionRevisionServiceConfigTelemetryConfigLoggingConfig].
  /// [applicationLogLevel] Log level for application logs emitted by the web function.
  /// [logGroup] Name of the Amazon CloudWatch Logs log group the web function sends logs to.
  /// [systemLogLevel] Log level for system logs emitted by the Lambda runtime.
  const FunctionRevisionServiceConfigTelemetryConfigLoggingConfig({
    this.applicationLogLevel,
    this.logGroup,
    this.systemLogLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLogLevel': ?applicationLogLevel,
      'logGroup': ?logGroup,
      'systemLogLevel': ?systemLogLevel,
    };
  }

  factory FunctionRevisionServiceConfigTelemetryConfigLoggingConfig.fromMap(Map<String, dynamic> map) {
    return FunctionRevisionServiceConfigTelemetryConfigLoggingConfig(
      applicationLogLevel: (() { final guardedValue = map['applicationLogLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logGroup: (() { final guardedValue = map['logGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemLogLevel: (() { final guardedValue = map['systemLogLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
