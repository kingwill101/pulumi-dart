// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_state_store_destination_configuration.dart';

/// The type for a MQTT broker state store destination.
class DatasetBrokerStateStoreDestination {
  /// The MQTT broker state store destination configuration.
  final pulumi.Input<BrokerStateStoreDestinationConfiguration> configuration;
  /// The set of supported dataset destinations for an asset.
  /// Expected value is 'BrokerStateStore'.
  final pulumi.Input<String> target;

  /// Creates a new [DatasetBrokerStateStoreDestination].
  /// [configuration] The MQTT broker state store destination configuration.
  /// [target] The set of supported dataset destinations for an asset.
  const DatasetBrokerStateStoreDestination({
    required this.configuration,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': pulumi.Input.mapInputValue<BrokerStateStoreDestinationConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'target': target,
    };
  }

  factory DatasetBrokerStateStoreDestination.fromMap(Map<String, dynamic> map) {
    return DatasetBrokerStateStoreDestination(
      configuration: pulumi.Input.fromValue(BrokerStateStoreDestinationConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}
