/// Mode of enablement for localDNS.
enum LocalDNSMode {
  valuePreferred("Preferred"),
  valueRequired("Required"),
  valueDisabled("Disabled");

  const LocalDNSMode(this.value);
  final String value;

  static LocalDNSMode fromValue(String value) {
    for (final item in LocalDNSMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocalDNSMode value: $value');
  }
}

