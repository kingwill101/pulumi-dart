// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mqtt_destination_configuration.dart';

/// The type for a MQTT destination.
class EventMqttDestination {
  /// The MQTT destination configuration.
  final pulumi.Input<MqttDestinationConfiguration> configuration;
  /// The set of supported event destinations for an asset.
  /// Expected value is 'Mqtt'.
  final pulumi.Input<String> target;

  /// Creates a new [EventMqttDestination].
  /// [configuration] The MQTT destination configuration.
  /// [target] The set of supported event destinations for an asset.
  EventMqttDestination({
    required this.configuration,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': pulumi.Input.mapInputValue<MqttDestinationConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'target': target,
    };
  }

  factory EventMqttDestination.fromMap(Map<String, dynamic> map) {
    return EventMqttDestination(
      configuration: pulumi.Input.fromValue(MqttDestinationConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}

