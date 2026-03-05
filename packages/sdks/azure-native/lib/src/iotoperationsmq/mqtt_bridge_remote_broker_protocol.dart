/// Protocol for remote connection.
enum MqttBridgeRemoteBrokerProtocol {
  mqtt("mqtt"),
  webSocket("webSocket");

  const MqttBridgeRemoteBrokerProtocol(this.wireValue);
  final String wireValue;

  static MqttBridgeRemoteBrokerProtocol fromValue(String value) {
    for (final item in MqttBridgeRemoteBrokerProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MqttBridgeRemoteBrokerProtocol value: $value');
  }
}

