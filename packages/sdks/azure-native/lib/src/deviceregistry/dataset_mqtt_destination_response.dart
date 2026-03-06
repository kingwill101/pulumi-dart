// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mqtt_destination_configuration_response.dart';

/// The type for a MQTT destination.
class DatasetMqttDestinationResponse {
  /// The MQTT destination configuration.
  final pulumi.Input<MqttDestinationConfigurationResponse> configuration;
  /// The set of supported dataset destinations for an asset.
  /// Expected value is 'Mqtt'.
  final pulumi.Input<String> target;

  /// Creates a new [DatasetMqttDestinationResponse].
  /// [configuration] The MQTT destination configuration.
  /// [target] The set of supported dataset destinations for an asset.
  const DatasetMqttDestinationResponse({
    required this.configuration,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': pulumi.Input.mapInputValue<MqttDestinationConfigurationResponse, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'target': target,
    };
  }

  factory DatasetMqttDestinationResponse.fromMap(Map<String, dynamic> map) {
    return DatasetMqttDestinationResponse(
      configuration: pulumi.Input.fromValue(MqttDestinationConfigurationResponse.fromMap((map['configuration']! as Map).cast<String, dynamic>())),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}

