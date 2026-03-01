/// Specifies whether the port is enabled for a serial console connection.
enum SerialPortState {
  valueEnabled("enabled"),
  valueDisabled("disabled");

  const SerialPortState(this.value);
  final String value;

  static SerialPortState fromValue(String value) {
    for (final item in SerialPortState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SerialPortState value: $value');
  }
}

