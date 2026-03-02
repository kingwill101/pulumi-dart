// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_rule_error_action_kafka_header.dart';

class TopicRuleErrorActionKafka {
  /// Properties of the Apache Kafka producer client. For more info, see the [AWS documentation](https://docs.aws.amazon.com/iot/latest/developerguide/apache-kafka-rule-action.html).
  final pulumi.Input<Map<String, String>> clientProperties;
  /// The ARN of Kafka action's VPC `aws.iot.TopicRuleDestination`.
  final pulumi.Input<String> destinationArn;
  /// The list of Kafka headers that you specify. Nested arguments below.
  final pulumi.Input<List<TopicRuleErrorActionKafkaHeader>>? headers;
  /// The Kafka message key.
  final pulumi.Input<String>? key;
  /// The Kafka message partition.
  final pulumi.Input<String>? partition;
  /// The Kafka topic for messages to be sent to the Kafka broker.
  final pulumi.Input<String> topic;

  /// Creates a new [TopicRuleErrorActionKafka].
  /// [clientProperties] Properties of the Apache Kafka producer client. For more info, see the [AWS documentation](https://docs.aws.amazon.com/iot/latest/developerguide/apache-kafka-rule-action.html).
  /// [destinationArn] The ARN of Kafka action's VPC `aws.iot.TopicRuleDestination`.
  /// [headers] The list of Kafka headers that you specify. Nested arguments below.
  /// [key] The Kafka message key.
  /// [partition] The Kafka message partition.
  /// [topic] The Kafka topic for messages to be sent to the Kafka broker.
  TopicRuleErrorActionKafka({
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
      'headers': ?pulumi.Input.mapOptionalInputValue<List<TopicRuleErrorActionKafkaHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<TopicRuleErrorActionKafkaHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'key': ?key,
      'partition': ?partition,
      'topic': topic,
    };
  }

  factory TopicRuleErrorActionKafka.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionKafka(
      clientProperties: ((map['clientProperties'] as Map).cast<String, String>()).input(),
      destinationArn: (map['destinationArn'] as String).input(),
      headers: map['headers'] == null ? null : (pulumi.Input.decodeList<TopicRuleErrorActionKafkaHeader>(map['headers'], (value) => TopicRuleErrorActionKafkaHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      partition: map['partition'] == null ? null : (map['partition'] as String).input(),
      topic: (map['topic'] as String).input(),
    );
  }
}

