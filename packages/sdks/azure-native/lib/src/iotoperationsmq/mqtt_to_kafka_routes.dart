// ignore_for_file: unused_element, unnecessary_cast

import 'kafka_shared_subscription_properties.dart';

/// Mqtt to Kafka route properties
class MqttToKafkaRoutes {
  /// The kafka acks to use.
  final String kafkaAcks;
  /// The kafka topic to publish to.
  final String kafkaTopic;
  /// The mqtt topic to pull from.
  final String mqttTopic;
  /// The name of the route.
  final String name;
  /// The qos to use for mqtt.
  final int? qos;
  /// The properties for shared subscription.
  final KafkaSharedSubscriptionProperties? sharedSubscription;

  /// Creates a new [MqttToKafkaRoutes].
  /// [kafkaAcks] The kafka acks to use.
  /// [kafkaTopic] The kafka topic to publish to.
  /// [mqttTopic] The mqtt topic to pull from.
  /// [name] The name of the route.
  /// [qos] The qos to use for mqtt.
  /// [sharedSubscription] The properties for shared subscription.
  MqttToKafkaRoutes({
    required this.kafkaAcks,
    required this.kafkaTopic,
    required this.mqttTopic,
    required this.name,
    this.qos,
    this.sharedSubscription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kafkaAcks': kafkaAcks,
      'kafkaTopic': kafkaTopic,
      'mqttTopic': mqttTopic,
      'name': name,
      'qos': ?qos,
      'sharedSubscription': ?sharedSubscription == null ? null : sharedSubscription!.toMap(),
    };
  }

  factory MqttToKafkaRoutes.fromMap(Map<String, dynamic> map) {
    return MqttToKafkaRoutes(
      kafkaAcks: map['kafkaAcks'] as String,
      kafkaTopic: map['kafkaTopic'] as String,
      mqttTopic: map['mqttTopic'] as String,
      name: map['name'] as String,
      qos: map['qos'] == null ? null : map['qos'] as int,
      sharedSubscription: map['sharedSubscription'] == null ? null : KafkaSharedSubscriptionProperties.fromMap((map['sharedSubscription'] as Map).cast<String, dynamic>()),
    );
  }
}

