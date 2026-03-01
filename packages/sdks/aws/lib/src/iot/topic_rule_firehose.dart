// ignore_for_file: unused_element, unnecessary_cast


class TopicRuleFirehose {
  /// The payload that contains a JSON array of records will be sent to Kinesis Firehose via a batch call.
  final bool? batchMode;
  /// The delivery stream name.
  final String deliveryStreamName;
  /// The IAM role ARN that grants access to the Amazon Kinesis Firehose stream.
  final String roleArn;
  /// A character separator that is used to separate records written to the Firehose stream. Valid values are: '\n' (newline), '\t' (tab), '\r\n' (Windows newline), ',' (comma).
  final String? separator;

  /// Creates a new [TopicRuleFirehose].
  /// [batchMode] The payload that contains a JSON array of records will be sent to Kinesis Firehose via a batch call.
  /// [deliveryStreamName] The delivery stream name.
  /// [roleArn] The IAM role ARN that grants access to the Amazon Kinesis Firehose stream.
  /// [separator] A character separator that is used to separate records written to the Firehose stream. Valid values are: '\n' (newline), '\t' (tab), '\r\n' (Windows newline), ',' (comma).
  TopicRuleFirehose({
    this.batchMode,
    required this.deliveryStreamName,
    required this.roleArn,
    this.separator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchMode': ?batchMode,
      'deliveryStreamName': deliveryStreamName,
      'roleArn': roleArn,
      'separator': ?separator,
    };
  }

  factory TopicRuleFirehose.fromMap(Map<String, dynamic> map) {
    return TopicRuleFirehose(
      batchMode: map['batchMode'] == null ? null : map['batchMode'] as bool,
      deliveryStreamName: map['deliveryStreamName'] as String,
      roleArn: map['roleArn'] as String,
      separator: map['separator'] == null ? null : map['separator'] as String,
    );
  }
}

