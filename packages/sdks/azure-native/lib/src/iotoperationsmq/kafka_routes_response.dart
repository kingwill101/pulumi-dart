// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kafka_to_mqtt_routes_response.dart';
import 'mqtt_to_kafka_routes_response.dart';

/// Kafka Routes properties. NOTE - Enum only one method is allowed to be passed.
class KafkaRoutesResponse {
  /// Kafka to Mqtt route.
  final pulumi.Input<KafkaToMqttRoutesResponse?>? kafkaToMqtt;
  /// Mqtt to Kafka route.
  final pulumi.Input<MqttToKafkaRoutesResponse?>? mqttToKafka;

  /// Creates a new [KafkaRoutesResponse].
  /// [kafkaToMqtt] Kafka to Mqtt route.
  /// [mqttToKafka] Mqtt to Kafka route.
  const KafkaRoutesResponse({
    this.kafkaToMqtt,
    this.mqttToKafka,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kafkaToMqtt': ?pulumi.Input.mapOptionalInputValue<KafkaToMqttRoutesResponse, Map<String, dynamic>>(kafkaToMqtt, (value) => value.toMap()),
      'mqttToKafka': ?pulumi.Input.mapOptionalInputValue<MqttToKafkaRoutesResponse, Map<String, dynamic>>(mqttToKafka, (value) => value.toMap()),
    };
  }

  factory KafkaRoutesResponse.fromMap(Map<String, dynamic> map) {
    return KafkaRoutesResponse(
      kafkaToMqtt: (() { final guardedValue = map['kafkaToMqtt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KafkaToMqttRoutesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mqttToKafka: (() { final guardedValue = map['mqttToKafka']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MqttToKafkaRoutesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
