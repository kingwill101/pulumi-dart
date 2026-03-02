// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kafka_to_mqtt_routes_response.dart';
import 'mqtt_to_kafka_routes_response.dart';

/// Kafka Routes properties. NOTE - Enum only one method is allowed to be passed.
class KafkaRoutesResponse {
  /// Kafka to Mqtt route.
  final pulumi.Input<KafkaToMqttRoutesResponse>? kafkaToMqtt;
  /// Mqtt to Kafka route.
  final pulumi.Input<MqttToKafkaRoutesResponse>? mqttToKafka;

  /// Creates a new [KafkaRoutesResponse].
  /// [kafkaToMqtt] Kafka to Mqtt route.
  /// [mqttToKafka] Mqtt to Kafka route.
  KafkaRoutesResponse({
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
      kafkaToMqtt: map['kafkaToMqtt'] == null ? null : (KafkaToMqttRoutesResponse.fromMap((map['kafkaToMqtt']! as Map).cast<String, dynamic>())).input(),
      mqttToKafka: map['mqttToKafka'] == null ? null : (MqttToKafkaRoutesResponse.fromMap((map['mqttToKafka']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

