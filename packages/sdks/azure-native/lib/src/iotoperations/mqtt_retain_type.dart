/// Whether or not to keep the retain setting.
enum MqttRetainType {
  keep("Keep"),
  never("Never");

  const MqttRetainType(this.value);
  final String value;

  static MqttRetainType fromValue(String value) {
    for (final item in MqttRetainType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MqttRetainType value: $value');
  }
}

