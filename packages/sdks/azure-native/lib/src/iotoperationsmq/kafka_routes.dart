// ignore_for_file: unused_element, unnecessary_cast

import 'kafka_to_mqtt_routes.dart';
import 'mqtt_to_kafka_routes.dart';

/// Kafka Routes properties. NOTE - Enum only one method is allowed to be passed.
class KafkaRoutes {
  /// Kafka to Mqtt route.
  final KafkaToMqttRoutes? kafkaToMqtt;
  /// Mqtt to Kafka route.
  final MqttToKafkaRoutes? mqttToKafka;

  /// Creates a new [KafkaRoutes].
  /// [kafkaToMqtt] Kafka to Mqtt route.
  /// [mqttToKafka] Mqtt to Kafka route.
  KafkaRoutes({
    this.kafkaToMqtt,
    this.mqttToKafka,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kafkaToMqtt': ?kafkaToMqtt == null ? null : kafkaToMqtt!.toMap(),
      'mqttToKafka': ?mqttToKafka == null ? null : mqttToKafka!.toMap(),
    };
  }

  factory KafkaRoutes.fromMap(Map<String, dynamic> map) {
    return KafkaRoutes(
      kafkaToMqtt: map['kafkaToMqtt'] == null ? null : KafkaToMqttRoutes.fromMap((map['kafkaToMqtt'] as Map).cast<String, dynamic>()),
      mqttToKafka: map['mqttToKafka'] == null ? null : MqttToKafkaRoutes.fromMap((map['mqttToKafka'] as Map).cast<String, dynamic>()),
    );
  }
}

