// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LoggingConfig
class LoggingConfigSnsTopicResponse {
  /// Property failureFeedbackRoleArn
  final pulumi.Input<String>? failureFeedbackRoleArn;
  /// Property protocol
  final pulumi.Input<String>? protocol;
  /// Property successFeedbackRoleArn
  final pulumi.Input<String>? successFeedbackRoleArn;
  /// Property successFeedbackSampleRate
  final pulumi.Input<String>? successFeedbackSampleRate;

  /// Creates a new [LoggingConfigSnsTopicResponse].
  /// [failureFeedbackRoleArn] Property failureFeedbackRoleArn
  /// [protocol] Property protocol
  /// [successFeedbackRoleArn] Property successFeedbackRoleArn
  /// [successFeedbackSampleRate] Property successFeedbackSampleRate
  const LoggingConfigSnsTopicResponse({
    this.failureFeedbackRoleArn,
    this.protocol,
    this.successFeedbackRoleArn,
    this.successFeedbackSampleRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureFeedbackRoleArn': ?failureFeedbackRoleArn,
      'protocol': ?protocol,
      'successFeedbackRoleArn': ?successFeedbackRoleArn,
      'successFeedbackSampleRate': ?successFeedbackSampleRate,
    };
  }

  factory LoggingConfigSnsTopicResponse.fromMap(Map<String, dynamic> map) {
    return LoggingConfigSnsTopicResponse(
      failureFeedbackRoleArn: (() { final guardedValue = map['failureFeedbackRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      successFeedbackRoleArn: (() { final guardedValue = map['successFeedbackRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      successFeedbackSampleRate: (() { final guardedValue = map['successFeedbackSampleRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
