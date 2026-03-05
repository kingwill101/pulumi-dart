/// Enable or disable websockets.
enum BrokerProtocolType {
  mqtt("Mqtt"),
  webSockets("WebSockets");

  const BrokerProtocolType(this.wireValue);
  final String wireValue;

  static BrokerProtocolType fromValue(String value) {
    for (final item in BrokerProtocolType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BrokerProtocolType value: $value');
  }
}

