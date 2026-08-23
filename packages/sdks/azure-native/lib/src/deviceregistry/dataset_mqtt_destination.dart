// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mqtt_destination_configuration.dart';

/// The type for a MQTT destination.
class DatasetMqttDestination {
  /// The MQTT destination configuration.
  final pulumi.Input<MqttDestinationConfiguration> configuration;
  /// The set of supported dataset destinations for an asset.
  /// Expected value is 'Mqtt'.
  final pulumi.Input<String> target;

  /// Creates a new [DatasetMqttDestination].
  /// [configuration] The MQTT destination configuration.
  /// [target] The set of supported dataset destinations for an asset.
  const DatasetMqttDestination({
    required this.configuration,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': pulumi.Input.mapInputValue<MqttDestinationConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'target': target,
    };
  }

  factory DatasetMqttDestination.fromMap(Map<String, dynamic> map) {
    return DatasetMqttDestination(
      configuration: pulumi.Input.fromValue(MqttDestinationConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}
