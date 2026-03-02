// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleErrorActionFirehose {
  /// The payload that contains a JSON array of records will be sent to Kinesis Firehose via a batch call.
  final pulumi.Input<bool>? batchMode;
  /// The delivery stream name.
  final pulumi.Input<String> deliveryStreamName;
  /// The IAM role ARN that grants access to the Amazon Kinesis Firehose stream.
  final pulumi.Input<String> roleArn;
  /// A character separator that is used to separate records written to the Firehose stream. Valid values are: '\n' (newline), '\t' (tab), '\r\n' (Windows newline), ',' (comma).
  final pulumi.Input<String>? separator;

  /// Creates a new [TopicRuleErrorActionFirehose].
  /// [batchMode] The payload that contains a JSON array of records will be sent to Kinesis Firehose via a batch call.
  /// [deliveryStreamName] The delivery stream name.
  /// [roleArn] The IAM role ARN that grants access to the Amazon Kinesis Firehose stream.
  /// [separator] A character separator that is used to separate records written to the Firehose stream. Valid values are: '\n' (newline), '\t' (tab), '\r\n' (Windows newline), ',' (comma).
  TopicRuleErrorActionFirehose({
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

  factory TopicRuleErrorActionFirehose.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionFirehose(
      batchMode: map['batchMode'] == null ? null : (map['batchMode'] as bool).input(),
      deliveryStreamName: (map['deliveryStreamName'] as String).input(),
      roleArn: (map['roleArn'] as String).input(),
      separator: map['separator'] == null ? null : (map['separator'] as String).input(),
    );
  }
}

