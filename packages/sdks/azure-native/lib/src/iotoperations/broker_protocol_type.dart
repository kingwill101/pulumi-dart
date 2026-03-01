/// Enable or disable websockets.
enum BrokerProtocolType {
  mqtt("Mqtt"),
  webSockets("WebSockets");

  const BrokerProtocolType(this.value);
  final String value;

  static BrokerProtocolType fromValue(String value) {
    for (final item in BrokerProtocolType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BrokerProtocolType value: $value');
  }
}

