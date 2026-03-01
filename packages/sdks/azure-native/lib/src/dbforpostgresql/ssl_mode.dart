/// SSL mode used by a migration. Default SSL mode for 'PostgreSQLSingleServer' is 'VerifyFull'. Default SSL mode for other source types is 'Prefer'.
enum SslMode {
  prefer("Prefer"),
  require("Require"),
  verifyCA("VerifyCA"),
  verifyFull("VerifyFull");

  const SslMode(this.value);
  final String value;

  static SslMode fromValue(String value) {
    for (final item in SslMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslMode value: $value');
  }
}

