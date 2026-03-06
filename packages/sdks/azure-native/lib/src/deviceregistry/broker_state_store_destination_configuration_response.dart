// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration for a MQTT broker state store destination.
class BrokerStateStoreDestinationConfigurationResponse {
  /// The MQTT broker state store destination key.
  final pulumi.Input<String> key;

  /// Creates a new [BrokerStateStoreDestinationConfigurationResponse].
  /// [key] The MQTT broker state store destination key.
  const BrokerStateStoreDestinationConfigurationResponse({
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
    };
  }

  factory BrokerStateStoreDestinationConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BrokerStateStoreDestinationConfigurationResponse(
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}

