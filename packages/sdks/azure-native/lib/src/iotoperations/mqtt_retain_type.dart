/// Whether or not to keep the retain setting.
enum MqttRetainType {
  keep("Keep"),
  never_("Never");

  const MqttRetainType(this.wireValue);
  final String wireValue;

  static MqttRetainType fromValue(String value) {
    for (final item in MqttRetainType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MqttRetainType value: $value');
  }
}

