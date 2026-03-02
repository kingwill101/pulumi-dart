// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kafka_shared_subscription_properties.dart';

/// Mqtt to Kafka route properties
class MqttToKafkaRoutes {
  /// The kafka acks to use.
  final pulumi.Input<String> kafkaAcks;
  /// The kafka topic to publish to.
  final pulumi.Input<String> kafkaTopic;
  /// The mqtt topic to pull from.
  final pulumi.Input<String> mqttTopic;
  /// The name of the route.
  final pulumi.Input<String> name;
  /// The qos to use for mqtt.
  final pulumi.Input<int>? qos;
  /// The properties for shared subscription.
  final pulumi.Input<KafkaSharedSubscriptionProperties>? sharedSubscription;

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
      'sharedSubscription': ?pulumi.Input.mapOptionalInputValue<KafkaSharedSubscriptionProperties, Map<String, dynamic>>(sharedSubscription, (value) => value.toMap()),
    };
  }

  factory MqttToKafkaRoutes.fromMap(Map<String, dynamic> map) {
    return MqttToKafkaRoutes(
      kafkaAcks: (map['kafkaAcks'] as String).input(),
      kafkaTopic: (map['kafkaTopic'] as String).input(),
      mqttTopic: (map['mqttTopic'] as String).input(),
      name: (map['name'] as String).input(),
      qos: map['qos'] == null ? null : (map['qos'] as int).input(),
      sharedSubscription: map['sharedSubscription'] == null ? null : (KafkaSharedSubscriptionProperties.fromMap((map['sharedSubscription'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

