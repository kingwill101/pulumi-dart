// ignore_for_file: unused_element, unnecessary_cast


/// The configuration for a MQTT destination.
class MqttDestinationConfigurationResponse {
  /// The MQTT QoS setting. Defaults to QoS 1.
  final String? qos;
  /// When set to 'Keep', messages published to an MQTT broker will have the retain flag set. Default: 'Never'.
  final String? retain;
  /// The MQTT topic.
  final String topic;
  /// The MQTT TTL setting.
  final double? ttl;

  /// Creates a new [MqttDestinationConfigurationResponse].
  /// [qos] The MQTT QoS setting. Defaults to QoS 1.
  /// [retain] When set to 'Keep', messages published to an MQTT broker will have the retain flag set. Default: 'Never'.
  /// [topic] The MQTT topic.
  /// [ttl] The MQTT TTL setting.
  MqttDestinationConfigurationResponse({
    this.qos,
    this.retain,
    required this.topic,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'qos': ?qos,
      'retain': ?retain,
      'topic': topic,
      'ttl': ?ttl,
    };
  }

  factory MqttDestinationConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return MqttDestinationConfigurationResponse(
      qos: map['qos'] == null ? null : map['qos'] as String,
      retain: map['retain'] == null ? null : map['retain'] as String,
      topic: map['topic'] as String,
      ttl: map['ttl'] == null ? null : map['ttl'] as double,
    );
  }
}

