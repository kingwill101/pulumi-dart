/// Protocol for remote connection.
enum MqttBridgeRemoteBrokerProtocol {
  mqtt("mqtt"),
  webSocket("webSocket");

  const MqttBridgeRemoteBrokerProtocol(this.value);
  final String value;

  static MqttBridgeRemoteBrokerProtocol fromValue(String value) {
    for (final item in MqttBridgeRemoteBrokerProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MqttBridgeRemoteBrokerProtocol value: $value');
  }
}

