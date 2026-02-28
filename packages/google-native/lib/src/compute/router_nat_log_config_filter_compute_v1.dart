/// Specify the desired filtering of logs on this NAT. If unspecified, logs are exported for all connections handled by this NAT. This option can take one of the following values: - ERRORS_ONLY: Export logs only for connection failures. - TRANSLATIONS_ONLY: Export logs only for successful connections. - ALL: Export logs for all connections, successful and unsuccessful.
enum RouterNatLogConfigFilterComputeV1 {
  all("ALL"),
  errorsOnly("ERRORS_ONLY"),
  translationsOnly("TRANSLATIONS_ONLY");

  const RouterNatLogConfigFilterComputeV1(this.value);
  final String value;

  static RouterNatLogConfigFilterComputeV1 fromValue(String value) {
    for (final item in RouterNatLogConfigFilterComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatLogConfigFilterComputeV1 value: $value');
  }
}

