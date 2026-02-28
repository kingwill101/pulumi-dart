// ignore_for_file: unused_element, unnecessary_cast

class TopicRuleKinesis {
  /// The partition key.
  final String? partitionKey;

  /// The ARN of the IAM role that grants access to the Amazon Kinesis stream.
  final String roleArn;

  /// The name of the Amazon Kinesis stream.
  final String streamName;

  /// Creates a new [TopicRuleKinesis].
  /// [partitionKey] The partition key.
  /// [roleArn] The ARN of the IAM role that grants access to the Amazon Kinesis stream.
  /// [streamName] The name of the Amazon Kinesis stream.
  TopicRuleKinesis({
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

  factory TopicRuleKinesis.fromMap(Map<String, dynamic> map) {
    return TopicRuleKinesis(
      partitionKey:
          map['partitionKey'] == null ? null : map['partitionKey'] as String,
      roleArn: map['roleArn'] as String,
      streamName: map['streamName'] as String,
    );
  }
}
