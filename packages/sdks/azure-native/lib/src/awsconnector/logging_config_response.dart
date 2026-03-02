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
  /// The name of the Amazon CloudWatch log group the function sends logs to. By default, Lambda functions send logs to a default log group named ``/aws/lambda/<function name>``. To use a different log group, enter an existing log group or enter a new log group name.
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
  /// [logGroup] The name of the Amazon CloudWatch log group the function sends logs to. By default, Lambda functions send logs to a default log group named ``/aws/lambda/<function name>``. To use a different log group, enter an existing log group or enter a new log group name.
  /// [protocol] Property protocol
  /// [successFeedbackRoleArn] Property successFeedbackRoleArn
  /// [successFeedbackSampleRate] Property successFeedbackSampleRate
  /// [systemLogLevel] Set this property to filter the system logs for your function that Lambda sends to CloudWatch. Lambda only sends system logs at the selected level of detail and lower, where ``DEBUG`` is the highest level and ``WARN`` is the lowest.
  LoggingConfigResponse({
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
      applicationLogLevel: map['applicationLogLevel'] == null ? null : (map['applicationLogLevel'] as String).input(),
      failureFeedbackRoleArn: map['failureFeedbackRoleArn'] == null ? null : (map['failureFeedbackRoleArn'] as String).input(),
      logFormat: map['logFormat'] == null ? null : (map['logFormat'] as String).input(),
      logGroup: map['logGroup'] == null ? null : (map['logGroup'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      successFeedbackRoleArn: map['successFeedbackRoleArn'] == null ? null : (map['successFeedbackRoleArn'] as String).input(),
      successFeedbackSampleRate: map['successFeedbackSampleRate'] == null ? null : (map['successFeedbackSampleRate'] as String).input(),
      systemLogLevel: map['systemLogLevel'] == null ? null : (map['systemLogLevel'] as String).input(),
    );
  }
}

