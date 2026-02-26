// ignore_for_file: unused_element, unnecessary_cast

class TopicRuleErrorActionKinesis {
  /// The partition key.
  final String? partitionKey;

  /// The ARN of the IAM role that grants access to the Amazon Kinesis stream.
  final String roleArn;

  /// The name of the Amazon Kinesis stream.
  final String streamName;

  TopicRuleErrorActionKinesis({
    this.partitionKey,
    required this.roleArn,
    required this.streamName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final partitionKeyValue = partitionKey;
    if (partitionKeyValue != null) {
      map['partitionKey'] = partitionKeyValue;
    }
    map['roleArn'] = roleArn;
    map['streamName'] = streamName;
    return map;
  }

  factory TopicRuleErrorActionKinesis.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionKinesis(
      partitionKey:
          map['partitionKey'] == null ? null : map['partitionKey'] as String,
      roleArn: map['roleArn'] as String,
      streamName: map['streamName'] as String,
    );
  }
}
