// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_state_store_destination_configuration_response.dart';

/// The type for a MQTT broker state store destination.
class DatasetBrokerStateStoreDestinationResponse {
  /// The MQTT broker state store destination configuration.
  final pulumi.Input<BrokerStateStoreDestinationConfigurationResponse> configuration;
  /// The set of supported dataset destinations for an asset.
  /// Expected value is 'BrokerStateStore'.
  final pulumi.Input<String> target;

  /// Creates a new [DatasetBrokerStateStoreDestinationResponse].
  /// [configuration] The MQTT broker state store destination configuration.
  /// [target] The set of supported dataset destinations for an asset.
  const DatasetBrokerStateStoreDestinationResponse({
    required this.configuration,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': pulumi.Input.mapInputValue<BrokerStateStoreDestinationConfigurationResponse, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'target': target,
    };
  }

  factory DatasetBrokerStateStoreDestinationResponse.fromMap(Map<String, dynamic> map) {
    return DatasetBrokerStateStoreDestinationResponse(
      configuration: pulumi.Input.fromValue(BrokerStateStoreDestinationConfigurationResponse.fromMap((map['configuration']! as Map).cast<String, dynamic>())),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}
