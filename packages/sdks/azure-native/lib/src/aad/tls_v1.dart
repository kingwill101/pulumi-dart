/// A flag to determine whether or not TlsV1 is enabled or disabled.
enum TlsV1 {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const TlsV1(this.wireValue);
  final String wireValue;

  static TlsV1 fromValue(String value) {
    for (final item in TlsV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TlsV1 value: $value');
  }
}
