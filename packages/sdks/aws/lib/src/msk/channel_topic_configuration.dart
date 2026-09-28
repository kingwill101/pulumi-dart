// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_topic_configuration_record_converter.dart';
import 'channel_topic_configuration_record_schema.dart';

class ChannelTopicConfiguration {
  /// Configuration that controls how Apache Kafka record values are deserialized for the destination. See `recordConverter` Block below.
  final pulumi.Input<ChannelTopicConfigurationRecordConverter> recordConverter;
  /// Schema used to validate records when the value converter requires one. See `recordSchema` Block below.
  final pulumi.Input<ChannelTopicConfigurationRecordSchema?>? recordSchema;
  /// ARN that uniquely identifies the topic.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> topicArn;

  /// Creates a new [ChannelTopicConfiguration].
  /// [recordConverter] Configuration that controls how Apache Kafka record values are deserialized for the destination. See `recordConverter` Block below.
  /// [recordSchema] Schema used to validate records when the value converter requires one. See `recordSchema` Block below.
  /// [topicArn] ARN that uniquely identifies the topic.
  const ChannelTopicConfiguration({
    required this.recordConverter,
    this.recordSchema,
    required this.topicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordConverter': pulumi.Input.mapInputValue<ChannelTopicConfigurationRecordConverter, Map<String, dynamic>>(recordConverter, (value) => value.toMap()),
      'recordSchema': ?pulumi.Input.mapOptionalInputValue<ChannelTopicConfigurationRecordSchema, Map<String, dynamic>>(recordSchema, (value) => value.toMap()),
      'topicArn': topicArn,
    };
  }

  factory ChannelTopicConfiguration.fromMap(Map<String, dynamic> map) {
    return ChannelTopicConfiguration(
      recordConverter: pulumi.Input.fromValue(ChannelTopicConfigurationRecordConverter.fromMap((map['recordConverter']! as Map).cast<String, dynamic>())),
      recordSchema: (() { final guardedValue = map['recordSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelTopicConfigurationRecordSchema.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      topicArn: pulumi.Input.fromValue(map['topicArn'] as String),
    );
  }
}
