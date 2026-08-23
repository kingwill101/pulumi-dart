/// Enabled DNS proxy type, disabled by default
enum EnabledDNSType {
  valueCUSTOM("CUSTOM"),
  valueAZURE("AZURE");

  const EnabledDNSType(this.wireValue);
  final String wireValue;

  static EnabledDNSType fromValue(String value) {
    for (final item in EnabledDNSType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnabledDNSType value: $value');
  }
}
