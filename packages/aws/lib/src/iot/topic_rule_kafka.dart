// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_rule_kafka_header.dart';

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

  /// Creates a new [TopicRuleKafka].
  /// [clientProperties] Properties of the Apache Kafka producer client. For more info, see the [AWS documentation](https://docs.aws.amazon.com/iot/latest/developerguide/apache-kafka-rule-action.html).
  /// [destinationArn] The ARN of Kafka action's VPC `aws.iot.TopicRuleDestination`.
  /// [headers] The list of Kafka headers that you specify. Nested arguments below.
  /// [key] The Kafka message key.
  /// [partition] The Kafka message partition.
  /// [topic] The Kafka topic for messages to be sent to the Kafka broker.
  TopicRuleKafka({
    required this.clientProperties,
    required this.destinationArn,
    this.headers,
    this.key,
    this.partition,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientProperties': clientProperties,
      'destinationArn': destinationArn,
      'headers': ?headers == null
          ? null
          : pulumi.Input.encodeList<TopicRuleKafkaHeader, Map<String, dynamic>>(
              headers!,
              (value) => value.toMap(),
            ),
      'key': ?key,
      'partition': ?partition,
      'topic': topic,
    };
  }

  factory TopicRuleKafka.fromMap(Map<String, dynamic> map) {
    return TopicRuleKafka(
      clientProperties: (map['clientProperties'] as Map).cast<String, String>(),
      destinationArn: map['destinationArn'] as String,
      headers: map['headers'] == null
          ? null
          : pulumi.Input.decodeList<TopicRuleKafkaHeader>(
              map['headers'],
              (value) => TopicRuleKafkaHeader.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      key: map['key'] == null ? null : map['key'] as String,
      partition: map['partition'] == null ? null : map['partition'] as String,
      topic: map['topic'] as String,
    );
  }
}
