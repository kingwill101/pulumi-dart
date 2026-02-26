/// Specify the desired filtering of logs on this NAT. If unspecified, logs are exported for all connections handled by this NAT. This option can take one of the following values: - ERRORS_ONLY: Export logs only for connection failures. - TRANSLATIONS_ONLY: Export logs only for successful connections. - ALL: Export logs for all connections, successful and unsuccessful.
enum RouterNatLogConfigFilter3 {
  all("ALL"),
  errorsOnly("ERRORS_ONLY"),
  translationsOnly("TRANSLATIONS_ONLY");

  const RouterNatLogConfigFilter3(this.value);
  final String value;

  static RouterNatLogConfigFilter3 fromValue(String value) {
    for (final item in RouterNatLogConfigFilter3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatLogConfigFilter3 value: $value');
  }
}
