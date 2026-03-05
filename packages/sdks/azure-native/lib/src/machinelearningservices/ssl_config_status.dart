/// Enable or disable ssl for scoring
enum SslConfigStatus {
  valueDisabled("Disabled"),
  valueEnabled("Enabled"),
  valueAuto("Auto");

  const SslConfigStatus(this.wireValue);
  final String wireValue;

  static SslConfigStatus fromValue(String value) {
    for (final item in SslConfigStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslConfigStatus value: $value');
  }
}

