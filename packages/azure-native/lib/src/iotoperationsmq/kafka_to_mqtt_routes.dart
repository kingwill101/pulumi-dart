// ignore_for_file: unused_element, unnecessary_cast


/// Kafka to Mqtt route properties
class KafkaToMqttRoutes {
  /// The consumer group id to use.
  final String? consumerGroupId;
  /// The kafka topic to pull from.
  final String kafkaTopic;
  /// The mqtt topic to publish to.
  final String mqttTopic;
  /// The name of the route.
  final String name;
  /// The qos to use for mqtt.
  final int? qos;

  /// Creates a new [KafkaToMqttRoutes].
  /// [consumerGroupId] The consumer group id to use.
  /// [kafkaTopic] The kafka topic to pull from.
  /// [mqttTopic] The mqtt topic to publish to.
  /// [name] The name of the route.
  /// [qos] The qos to use for mqtt.
  KafkaToMqttRoutes({
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
      consumerGroupId: map['consumerGroupId'] == null ? null : map['consumerGroupId'] as String,
      kafkaTopic: map['kafkaTopic'] as String,
      mqttTopic: map['mqttTopic'] as String,
      name: map['name'] as String,
      qos: map['qos'] == null ? null : map['qos'] as int,
    );
  }
}

