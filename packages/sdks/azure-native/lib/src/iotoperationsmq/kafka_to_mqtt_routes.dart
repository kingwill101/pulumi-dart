// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Kafka to Mqtt route properties
class KafkaToMqttRoutes {
  /// The consumer group id to use.
  final pulumi.Input<String>? consumerGroupId;
  /// The kafka topic to pull from.
  final pulumi.Input<String> kafkaTopic;
  /// The mqtt topic to publish to.
  final pulumi.Input<String> mqttTopic;
  /// The name of the route.
  final pulumi.Input<String> name;
  /// The qos to use for mqtt.
  final pulumi.Input<int>? qos;

  /// Creates a new [KafkaToMqttRoutes].
  /// [consumerGroupId] The consumer group id to use.
  /// [kafkaTopic] The kafka topic to pull from.
  /// [mqttTopic] The mqtt topic to publish to.
  /// [name] The name of the route.
  /// [qos] The qos to use for mqtt.
  const KafkaToMqttRoutes({
    this.consumerGroupId,
    required this.kafkaTopic,
    required this.mqttTopic,
    required this.name,
    this.qos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerGroupId': ?consumerGroupId,
      'kafkaTopic': kafkaTopic,
      'mqttTopic': mqttTopic,
      'name': name,
      'qos': ?qos,
    };
  }

  factory KafkaToMqttRoutes.fromMap(Map<String, dynamic> map) {
    return KafkaToMqttRoutes(
      consumerGroupId: (() { final guardedValue = map['consumerGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kafkaTopic: pulumi.Input.fromValue(map['kafkaTopic'] as String),
      mqttTopic: pulumi.Input.fromValue(map['mqttTopic'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      qos: (() { final guardedValue = map['qos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

