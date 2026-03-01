/// Enabled DNS proxy type, disabled by default
enum EnabledDNSType {
  valueCUSTOM("CUSTOM"),
  valueAZURE("AZURE");

  const EnabledDNSType(this.value);
  final String value;

  static EnabledDNSType fromValue(String value) {
    for (final item in EnabledDNSType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnabledDNSType value: $value');
  }
}

