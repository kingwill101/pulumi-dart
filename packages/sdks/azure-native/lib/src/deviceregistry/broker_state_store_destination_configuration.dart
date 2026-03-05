// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration for a MQTT broker state store destination.
class BrokerStateStoreDestinationConfiguration {
  /// The MQTT broker state store destination key.
  final pulumi.Input<String> key;

  /// Creates a new [BrokerStateStoreDestinationConfiguration].
  /// [key] The MQTT broker state store destination key.
  BrokerStateStoreDestinationConfiguration({
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
    };
  }

  factory BrokerStateStoreDestinationConfiguration.fromMap(Map<String, dynamic> map) {
    return BrokerStateStoreDestinationConfiguration(
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}

