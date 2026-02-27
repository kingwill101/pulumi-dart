// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../topic_rule_kafka_header/topic_rule_kafka_header.dart';

class TopicRuleKafka {
  /// Properties of the Apache Kafka producer client. For more info, see the [AWS documentation](https://docs.aws.amazon.com/iot/latest/developerguide/apache-kafka-rule-action.html).
  final Map<String, String> clientProperties;

  /// The ARN of Kafka action's VPC `aws.iot.TopicRuleDestination`.
  final String destinationArn;

  /// The list of Kafka headers that you specify. Nested arguments below.
  final List<TopicRuleKafkaHeader>? headers;

  /// The Kafka message key.
  final String? key;

  /// The Kafka message partition.
  final String? partition;

  /// The Kafka topic for messages to be sent to the Kafka broker.
  final String topic;

  TopicRuleKafka({
    required this.clientProperties,
    required this.destinationArn,
    this.headers,
    this.key,
    this.partition,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientProperties'] = clientProperties;
    map['destinationArn'] = destinationArn;
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] =
          Input.encodeList<TopicRuleKafkaHeader, Map<String, dynamic>>(
              headersValue, (value) => value.toMap());
    }
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final partitionValue = partition;
    if (partitionValue != null) {
      map['partition'] = partitionValue;
    }
    map['topic'] = topic;
    return map;
  }

  factory TopicRuleKafka.fromMap(Map<String, dynamic> map) {
    return TopicRuleKafka(
      clientProperties: (map['clientProperties'] as Map).cast<String, String>(),
      destinationArn: map['destinationArn'] as String,
      headers: map['headers'] == null
          ? null
          : Input.decodeList<TopicRuleKafkaHeader>(
              map['headers'],
              (value) => TopicRuleKafkaHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
      key: map['key'] == null ? null : map['key'] as String,
      partition: map['partition'] == null ? null : map['partition'] as String,
      topic: map['topic'] as String,
    );
  }
}
