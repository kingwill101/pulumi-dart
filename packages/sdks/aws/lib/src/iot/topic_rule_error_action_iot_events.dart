// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleErrorActionIotEvents {
  /// The payload that contains a JSON array of records will be sent to IoT Events via a batch call.
  final pulumi.Input<bool>? batchMode;
  /// The name of the AWS IoT Events input.
  final pulumi.Input<String> inputName;
  /// Use this to ensure that only one input (message) with a given messageId is processed by an AWS IoT Events detector.
  final pulumi.Input<String>? messageId;
  /// The ARN of the IAM role that grants access.
  final pulumi.Input<String> roleArn;

  /// Creates a new [TopicRuleErrorActionIotEvents].
  /// [batchMode] The payload that contains a JSON array of records will be sent to IoT Events via a batch call.
  /// [inputName] The name of the AWS IoT Events input.
  /// [messageId] Use this to ensure that only one input (message) with a given messageId is processed by an AWS IoT Events detector.
  /// [roleArn] The ARN of the IAM role that grants access.
  const TopicRuleErrorActionIotEvents({
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

  factory TopicRuleErrorActionIotEvents.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionIotEvents(
      batchMode: (() { final guardedValue = map['batchMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      inputName: pulumi.Input.fromValue(map['inputName'] as String),
      messageId: (() { final guardedValue = map['messageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}
