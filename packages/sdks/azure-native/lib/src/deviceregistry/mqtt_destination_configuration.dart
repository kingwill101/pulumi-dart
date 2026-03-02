// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration for a MQTT destination.
class MqttDestinationConfiguration {
  /// The MQTT QoS setting. Defaults to QoS 1.
  final pulumi.Input<String>? qos;
  /// When set to 'Keep', messages published to an MQTT broker will have the retain flag set. Default: 'Never'.
  final pulumi.Input<String>? retain;
  /// The MQTT topic.
  final pulumi.Input<String> topic;
  /// The MQTT TTL setting.
  final pulumi.Input<double>? ttl;

  /// Creates a new [MqttDestinationConfiguration].
  /// [qos] The MQTT QoS setting. Defaults to QoS 1.
  /// [retain] When set to 'Keep', messages published to an MQTT broker will have the retain flag set. Default: 'Never'.
  /// [topic] The MQTT topic.
  /// [ttl] The MQTT TTL setting.
  MqttDestinationConfiguration({
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

  factory MqttDestinationConfiguration.fromMap(Map<String, dynamic> map) {
    return MqttDestinationConfiguration(
      qos: map['qos'] == null ? null : (map['qos'] as String).input(),
      retain: map['retain'] == null ? null : (map['retain'] as String).input(),
      topic: (map['topic'] as String).input(),
      ttl: map['ttl'] == null ? null : (map['ttl'] as double).input(),
    );
  }
}

