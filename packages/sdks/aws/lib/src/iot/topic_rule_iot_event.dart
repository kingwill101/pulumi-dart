// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleIotEvent {
  /// The payload that contains a JSON array of records will be sent to IoT Events via a batch call.
  final pulumi.Input<bool>? batchMode;
  /// The name of the AWS IoT Events input.
  final pulumi.Input<String> inputName;
  /// Use this to ensure that only one input (message) with a given messageId is processed by an AWS IoT Events detector.
  final pulumi.Input<String>? messageId;
  /// The ARN of the IAM role that grants access.
  final pulumi.Input<String> roleArn;

  /// Creates a new [TopicRuleIotEvent].
  /// [batchMode] The payload that contains a JSON array of records will be sent to IoT Events via a batch call.
  /// [inputName] The name of the AWS IoT Events input.
  /// [messageId] Use this to ensure that only one input (message) with a given messageId is processed by an AWS IoT Events detector.
  /// [roleArn] The ARN of the IAM role that grants access.
  TopicRuleIotEvent({
    this.batchMode,
    required this.inputName,
    this.messageId,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchMode': ?batchMode,
      'inputName': inputName,
      'messageId': ?messageId,
      'roleArn': roleArn,
    };
  }

  factory TopicRuleIotEvent.fromMap(Map<String, dynamic> map) {
    return TopicRuleIotEvent(
      batchMode: map['batchMode'] == null ? null : ((map['batchMode'] as bool).input()).input(),
      inputName: (map['inputName'] as String).input(),
      messageId: map['messageId'] == null ? null : ((map['messageId'] as String).input()).input(),
      roleArn: (map['roleArn'] as String).input(),
    );
  }
}

