// ignore_for_file: unused_element, unnecessary_cast

import 'broker_state_store_destination_configuration_response.dart';

/// The type for a MQTT broker state store destination.
class DatasetBrokerStateStoreDestinationResponse {
  /// The MQTT broker state store destination configuration.
  final BrokerStateStoreDestinationConfigurationResponse configuration;
  /// The set of supported dataset destinations for an asset.
  /// Expected value is 'BrokerStateStore'.
  final String target;

  /// Creates a new [DatasetBrokerStateStoreDestinationResponse].
  /// [configuration] The MQTT broker state store destination configuration.
  /// [target] The set of supported dataset destinations for an asset.
  DatasetBrokerStateStoreDestinationResponse({
    required this.configuration,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': configuration.toMap(),
      'target': target,
    };
  }

  factory DatasetBrokerStateStoreDestinationResponse.fromMap(Map<String, dynamic> map) {
    return DatasetBrokerStateStoreDestinationResponse(
      configuration: BrokerStateStoreDestinationConfigurationResponse.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      target: map['target'] as String,
    );
  }
}

