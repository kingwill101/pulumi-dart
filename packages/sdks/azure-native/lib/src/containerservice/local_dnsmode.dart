/// Mode of enablement for localDNS.
enum LocalDNSMode {
  valuePreferred("Preferred"),
  valueRequired("Required"),
  valueDisabled("Disabled");

  const LocalDNSMode(this.wireValue);
  final String wireValue;

  static LocalDNSMode fromValue(String value) {
    for (final item in LocalDNSMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocalDNSMode value: $value');
  }
}

