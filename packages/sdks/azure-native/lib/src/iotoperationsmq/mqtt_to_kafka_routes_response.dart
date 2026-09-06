// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kafka_shared_subscription_properties_response.dart';

/// Mqtt to Kafka route properties
class MqttToKafkaRoutesResponse {
  /// The kafka acks to use.
  final pulumi.Input<String> kafkaAcks;
  /// The kafka topic to publish to.
  final pulumi.Input<String> kafkaTopic;
  /// The mqtt topic to pull from.
  final pulumi.Input<String> mqttTopic;
  /// The name of the route.
  final pulumi.Input<String> name;
  /// The qos to use for mqtt.
  final pulumi.Input<int?>? qos;
  /// The properties for shared subscription.
  final pulumi.Input<KafkaSharedSubscriptionPropertiesResponse?>? sharedSubscription;

  /// Creates a new [MqttToKafkaRoutesResponse].
  /// [kafkaAcks] The kafka acks to use.
  /// [kafkaTopic] The kafka topic to publish to.
  /// [mqttTopic] The mqtt topic to pull from.
  /// [name] The name of the route.
  /// [qos] The qos to use for mqtt.
  /// [sharedSubscription] The properties for shared subscription.
  MqttToKafkaRoutesResponse({
    required this.kafkaAcks,
    required this.kafkaTopic,
    required this.mqttTopic,
    required this.name,
    pulumi.Input<int?>? qos,
    this.sharedSubscription,
  }) : qos = qos ?? pulumi.Input.fromValue(1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kafkaAcks': kafkaAcks,
      'kafkaTopic': kafkaTopic,
      'mqttTopic': mqttTopic,
      'name': name,
      'qos': ?qos,
      'sharedSubscription': ?pulumi.Input.mapOptionalInputValue<KafkaSharedSubscriptionPropertiesResponse, Map<String, dynamic>>(sharedSubscription, (value) => value.toMap()),
    };
  }

  factory MqttToKafkaRoutesResponse.fromMap(Map<String, dynamic> map) {
    return MqttToKafkaRoutesResponse(
      kafkaAcks: pulumi.Input.fromValue(map['kafkaAcks'] as String),
      kafkaTopic: pulumi.Input.fromValue(map['kafkaTopic'] as String),
      mqttTopic: pulumi.Input.fromValue(map['mqttTopic'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      qos: (() { final guardedValue = map['qos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      sharedSubscription: (() { final guardedValue = map['sharedSubscription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KafkaSharedSubscriptionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
