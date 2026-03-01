// ignore_for_file: unused_element, unnecessary_cast

import 'mqtt_destination_configuration_response.dart';

/// The type for a MQTT destination.
class StreamMqttDestinationResponse {
  /// The MQTT destination configuration.
  final MqttDestinationConfigurationResponse configuration;
  /// The set of supported stream destinations for an asset.
  /// Expected value is 'Mqtt'.
  final String target;

  /// Creates a new [StreamMqttDestinationResponse].
  /// [configuration] The MQTT destination configuration.
  /// [target] The set of supported stream destinations for an asset.
  StreamMqttDestinationResponse({
    required this.configuration,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': configuration.toMap(),
      'target': target,
    };
  }

  factory StreamMqttDestinationResponse.fromMap(Map<String, dynamic> map) {
    return StreamMqttDestinationResponse(
      configuration: MqttDestinationConfigurationResponse.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      target: map['target'] as String,
    );
  }
}

