/// Signifies whether SSL needs to be enabled or not.
enum SSLStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const SSLStatus(this.wireValue);
  final String wireValue;

  static SSLStatus fromValue(String value) {
    for (final item in SSLStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SSLStatus value: $value');
  }
}

