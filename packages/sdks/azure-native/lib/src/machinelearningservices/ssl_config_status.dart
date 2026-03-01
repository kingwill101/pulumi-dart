/// Enable or disable ssl for scoring
enum SslConfigStatus {
  valueDisabled("Disabled"),
  valueEnabled("Enabled"),
  valueAuto("Auto");

  const SslConfigStatus(this.value);
  final String value;

  static SslConfigStatus fromValue(String value) {
    for (final item in SslConfigStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslConfigStatus value: $value');
  }
}

