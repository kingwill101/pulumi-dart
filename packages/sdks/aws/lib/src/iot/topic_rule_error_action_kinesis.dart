// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleErrorActionKinesis {
  /// The partition key.
  final pulumi.Input<String>? partitionKey;
  /// The ARN of the IAM role that grants access to the Amazon Kinesis stream.
  final pulumi.Input<String> roleArn;
  /// The name of the Amazon Kinesis stream.
  final pulumi.Input<String> streamName;

  /// Creates a new [TopicRuleErrorActionKinesis].
  /// [partitionKey] The partition key.
  /// [roleArn] The ARN of the IAM role that grants access to the Amazon Kinesis stream.
  /// [streamName] The name of the Amazon Kinesis stream.
  TopicRuleErrorActionKinesis({
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

  factory TopicRuleErrorActionKinesis.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionKinesis(
      partitionKey: map['partitionKey'] == null ? null : ((map['partitionKey'] as String).input()).input(),
      roleArn: (map['roleArn'] as String).input(),
      streamName: (map['streamName'] as String).input(),
    );
  }
}

