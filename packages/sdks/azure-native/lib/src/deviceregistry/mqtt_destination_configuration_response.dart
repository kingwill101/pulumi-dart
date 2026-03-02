// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration for a MQTT destination.
class MqttDestinationConfigurationResponse {
  /// The MQTT QoS setting. Defaults to QoS 1.
  final pulumi.Input<String>? qos;
  /// When set to 'Keep', messages published to an MQTT broker will have the retain flag set. Default: 'Never'.
  final pulumi.Input<String>? retain;
  /// The MQTT topic.
  final pulumi.Input<String> topic;
  /// The MQTT TTL setting.
  final pulumi.Input<double>? ttl;

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
      qos: map['qos'] == null ? null : (map['qos'] as String).input(),
      retain: map['retain'] == null ? null : (map['retain'] as String).input(),
      topic: (map['topic'] as String).input(),
      ttl: map['ttl'] == null ? null : (map['ttl'] as double).input(),
    );
  }
}

