/// The protocol to use for connecting with Brokers.
enum MqttProtocol {
  v3("v3"),
  v5("v5");

  const MqttProtocol(this.value);
  final String value;

  static MqttProtocol fromValue(String value) {
    for (final item in MqttProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MqttProtocol value: $value');
  }
}

