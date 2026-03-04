// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kafka_to_mqtt_routes.dart';
import 'mqtt_to_kafka_routes.dart';

/// Kafka Routes properties. NOTE - Enum only one method is allowed to be passed.
class KafkaRoutes {
  /// Kafka to Mqtt route.
  final pulumi.Input<KafkaToMqttRoutes>? kafkaToMqtt;

  /// Mqtt to Kafka route.
  final pulumi.Input<MqttToKafkaRoutes>? mqttToKafka;

  /// Creates a new [KafkaRoutes].
  /// [kafkaToMqtt] Kafka to Mqtt route.
  /// [mqttToKafka] Mqtt to Kafka route.
  KafkaRoutes({this.kafkaToMqtt, this.mqttToKafka});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kafkaToMqtt':
          ?pulumi.Input.mapOptionalInputValue<
            KafkaToMqttRoutes,
            Map<String, dynamic>
          >(kafkaToMqtt, (value) => value.toMap()),
      'mqttToKafka':
          ?pulumi.Input.mapOptionalInputValue<
            MqttToKafkaRoutes,
            Map<String, dynamic>
          >(mqttToKafka, (value) => value.toMap()),
    };
  }

  factory KafkaRoutes.fromMap(Map<String, dynamic> map) {
    return KafkaRoutes(
      kafkaToMqtt: (() {
        final guardedValue = map['kafkaToMqtt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          KafkaToMqttRoutes.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      mqttToKafka: (() {
        final guardedValue = map['mqttToKafka'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MqttToKafkaRoutes.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
