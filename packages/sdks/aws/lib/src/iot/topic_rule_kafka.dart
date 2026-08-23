// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_rule_kafka_header.dart';

class TopicRuleKafka {
  /// Properties of the Apache Kafka producer client. For more info, see the [AWS documentation](https://docs.aws.amazon.com/iot/latest/developerguide/apache-kafka-rule-action.html).
  final pulumi.Input<Map<String, String>> clientProperties;
  /// The ARN of Kafka action's VPC `aws.iot.TopicRuleDestination`.
  final pulumi.Input<String> destinationArn;
  /// The list of Kafka headers that you specify. Nested arguments below.
  final pulumi.Input<List<TopicRuleKafkaHeader>>? headers;
  /// The Kafka message key.
  final pulumi.Input<String>? key;
  /// The Kafka message partition.
  final pulumi.Input<String>? partition;
  /// The Kafka topic for messages to be sent to the Kafka broker.
  final pulumi.Input<String> topic;

  /// Creates a new [TopicRuleKafka].
  /// [clientProperties] Properties of the Apache Kafka producer client. For more info, see the [AWS documentation](https://docs.aws.amazon.com/iot/latest/developerguide/apache-kafka-rule-action.html).
  /// [destinationArn] The ARN of Kafka action's VPC `aws.iot.TopicRuleDestination`.
  /// [headers] The list of Kafka headers that you specify. Nested arguments below.
  /// [key] The Kafka message key.
  /// [partition] The Kafka message partition.
  /// [topic] The Kafka topic for messages to be sent to the Kafka broker.
  const TopicRuleKafka({
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
      'headers': ?pulumi.Input.mapOptionalInputValue<List<TopicRuleKafkaHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<TopicRuleKafkaHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'key': ?key,
      'partition': ?partition,
      'topic': topic,
    };
  }

  factory TopicRuleKafka.fromMap(Map<String, dynamic> map) {
    return TopicRuleKafka(
      clientProperties: pulumi.Input.fromValue((map['clientProperties'] as Map).cast<String, String>()),
      destinationArn: pulumi.Input.fromValue(map['destinationArn'] as String),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TopicRuleKafkaHeader>(guardedValue, (value) => TopicRuleKafkaHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partition: (() { final guardedValue = map['partition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}
