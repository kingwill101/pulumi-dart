/// A flag to determine whether or not TlsV1 is enabled or disabled.
enum TlsV1 {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const TlsV1(this.value);
  final String value;

  static TlsV1 fromValue(String value) {
    for (final item in TlsV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TlsV1 value: $value');
  }
}

