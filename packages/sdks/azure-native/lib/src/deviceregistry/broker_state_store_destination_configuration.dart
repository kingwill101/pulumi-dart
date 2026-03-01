// ignore_for_file: unused_element, unnecessary_cast


/// The configuration for a MQTT broker state store destination.
class BrokerStateStoreDestinationConfiguration {
  /// The MQTT broker state store destination key.
  final String key;

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
      key: map['key'] as String,
    );
  }
}

