// ignore_for_file: unused_element, unnecessary_cast


/// The configuration for a MQTT broker state store destination.
class BrokerStateStoreDestinationConfigurationResponse {
  /// The MQTT broker state store destination key.
  final String key;

  /// Creates a new [BrokerStateStoreDestinationConfigurationResponse].
  /// [key] The MQTT broker state store destination key.
  BrokerStateStoreDestinationConfigurationResponse({
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
    };
  }

  factory BrokerStateStoreDestinationConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BrokerStateStoreDestinationConfigurationResponse(
      key: map['key'] as String,
    );
  }
}

