// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleKinesis {
  /// The partition key.
  final pulumi.Input<String>? partitionKey;
  /// The ARN of the IAM role that grants access to the Amazon Kinesis stream.
  final pulumi.Input<String> roleArn;
  /// The name of the Amazon Kinesis stream.
  final pulumi.Input<String> streamName;

  /// Creates a new [TopicRuleKinesis].
  /// [partitionKey] The partition key.
  /// [roleArn] The ARN of the IAM role that grants access to the Amazon Kinesis stream.
  /// [streamName] The name of the Amazon Kinesis stream.
  const TopicRuleKinesis({
    this.partitionKey,
    required this.roleArn,
    required this.streamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionKey': ?partitionKey,
      'roleArn': roleArn,
      'streamName': streamName,
    };
  }

  factory TopicRuleKinesis.fromMap(Map<String, dynamic> map) {
    return TopicRuleKinesis(
      partitionKey: (() { final guardedValue = map['partitionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      streamName: pulumi.Input.fromValue(map['streamName'] as String),
    );
  }
}

