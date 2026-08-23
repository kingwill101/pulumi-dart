/// Enable or disable ssl for scoring
enum SslConfigStatus {
  disabled("Disabled"),
  enabled("Enabled"),
  auto("Auto");

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
