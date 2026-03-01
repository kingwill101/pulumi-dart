// ignore_for_file: unused_element, unnecessary_cast

import 'mqtt_destination_configuration_response.dart';

/// The type for a MQTT destination.
class EventMqttDestinationResponse {
  /// The MQTT destination configuration.
  final MqttDestinationConfigurationResponse configuration;
  /// The set of supported event destinations for an asset.
  /// Expected value is 'Mqtt'.
  final String target;

  /// Creates a new [EventMqttDestinationResponse].
  /// [configuration] The MQTT destination configuration.
  /// [target] The set of supported event destinations for an asset.
  EventMqttDestinationResponse({
    required this.configuration,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': configuration.toMap(),
      'target': target,
    };
  }

  factory EventMqttDestinationResponse.fromMap(Map<String, dynamic> map) {
    return EventMqttDestinationResponse(
      configuration: MqttDestinationConfigurationResponse.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      target: map['target'] as String,
    );
  }
}

