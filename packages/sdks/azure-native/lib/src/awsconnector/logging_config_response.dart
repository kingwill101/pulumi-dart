// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LoggingConfig
class LoggingConfigResponse {
  /// Set this property to filter the application logs for your function that Lambda sends to CloudWatch. Lambda only sends application logs at the selected level of detail and lower, where ``TRACE`` is the highest level and ``FATAL`` is the lowest.
  final pulumi.Input<String>? applicationLogLevel;
  /// Property failureFeedbackRoleArn
  final pulumi.Input<String>? failureFeedbackRoleArn;
  /// The format in which Lambda sends your function's application and system logs to CloudWatch. Select between plain text and structured JSON.
  final pulumi.Input<String>? logFormat;
  /// The name of the Amazon CloudWatch log group the function sends logs to. By default, Lambda functions send logs to a default log group named ``/aws/lambda/&lt;function name&gt;``. To use a different log group, enter an existing log group or enter a new log group name.
  final pulumi.Input<String>? logGroup;
  /// Property protocol
  final pulumi.Input<String>? protocol;
  /// Property successFeedbackRoleArn
  final pulumi.Input<String>? successFeedbackRoleArn;
  /// Property successFeedbackSampleRate
  final pulumi.Input<String>? successFeedbackSampleRate;
  /// Set this property to filter the system logs for your function that Lambda sends to CloudWatch. Lambda only sends system logs at the selected level of detail and lower, where ``DEBUG`` is the highest level and ``WARN`` is the lowest.
  final pulumi.Input<String>? systemLogLevel;

  /// Creates a new [LoggingConfigResponse].
  /// [applicationLogLevel] Set this property to filter the application logs for your function that Lambda sends to CloudWatch. Lambda only sends application logs at the selected level of detail and lower, where ``TRACE`` is the highest level and ``FATAL`` is the lowest.
  /// [failureFeedbackRoleArn] Property failureFeedbackRoleArn
  /// [logFormat] The format in which Lambda sends your function's application and system logs to CloudWatch. Select between plain text and structured JSON.
  /// [logGroup] The name of the Amazon CloudWatch log group the function sends logs to. By default, Lambda functions send logs to a default log group named ``/aws/lambda/&lt;function name&gt;``. To use a different log group, enter an existing log group or enter a new log group name.
  /// [protocol] Property protocol
  /// [successFeedbackRoleArn] Property successFeedbackRoleArn
  /// [successFeedbackSampleRate] Property successFeedbackSampleRate
  /// [systemLogLevel] Set this property to filter the system logs for your function that Lambda sends to CloudWatch. Lambda only sends system logs at the selected level of detail and lower, where ``DEBUG`` is the highest level and ``WARN`` is the lowest.
  const LoggingConfigResponse({
    this.applicationLogLevel,
    this.failureFeedbackRoleArn,
    this.logFormat,
    this.logGroup,
    this.protocol,
    this.successFeedbackRoleArn,
    this.successFeedbackSampleRate,
    this.systemLogLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLogLevel': ?applicationLogLevel,
      'failureFeedbackRoleArn': ?failureFeedbackRoleArn,
      'logFormat': ?logFormat,
      'logGroup': ?logGroup,
      'protocol': ?protocol,
      'successFeedbackRoleArn': ?successFeedbackRoleArn,
      'successFeedbackSampleRate': ?successFeedbackSampleRate,
      'systemLogLevel': ?systemLogLevel,
    };
  }

  factory LoggingConfigResponse.fromMap(Map<String, dynamic> map) {
    return LoggingConfigResponse(
      applicationLogLevel: (() { final guardedValue = map['applicationLogLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failureFeedbackRoleArn: (() { final guardedValue = map['failureFeedbackRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logFormat: (() { final guardedValue = map['logFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logGroup: (() { final guardedValue = map['logGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      successFeedbackRoleArn: (() { final guardedValue = map['successFeedbackRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      successFeedbackSampleRate: (() { final guardedValue = map['successFeedbackSampleRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemLogLevel: (() { final guardedValue = map['systemLogLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

