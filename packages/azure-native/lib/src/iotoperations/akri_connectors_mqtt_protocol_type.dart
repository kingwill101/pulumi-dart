/// The protocol to use for the connection. Currently only `mqtt` is supported.
enum AkriConnectorsMqttProtocolType {
  mqtt("Mqtt");

  const AkriConnectorsMqttProtocolType(this.value);
  final String value;

  static AkriConnectorsMqttProtocolType fromValue(String value) {
    for (final item in AkriConnectorsMqttProtocolType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AkriConnectorsMqttProtocolType value: $value');
  }
}

