// ignore_for_file: unused_element, unnecessary_cast

import 'mqtt_destination_configuration.dart';

/// The type for a MQTT destination.
class DatasetMqttDestination {
  /// The MQTT destination configuration.
  final MqttDestinationConfiguration configuration;
  /// The set of supported dataset destinations for an asset.
  /// Expected value is 'Mqtt'.
  final String target;

  /// Creates a new [DatasetMqttDestination].
  /// [configuration] The MQTT destination configuration.
  /// [target] The set of supported dataset destinations for an asset.
  DatasetMqttDestination({
    required this.configuration,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': configuration.toMap(),
      'target': target,
    };
  }

  factory DatasetMqttDestination.fromMap(Map<String, dynamic> map) {
    return DatasetMqttDestination(
      configuration: MqttDestinationConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      target: map['target'] as String,
    );
  }
}

