/// Signifies whether SSL needs to be enabled or not.
enum SSLStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const SSLStatus(this.value);
  final String value;

  static SSLStatus fromValue(String value) {
    for (final item in SSLStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SSLStatus value: $value');
  }
}

