/// Availability Zones
enum Zone {
  zone1("1"),
  zone2("2"),
  zone3("3");

  const Zone(this.wireValue);
  final String wireValue;

  static Zone fromValue(String value) {
    for (final item in Zone.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Zone value: $value');
  }
}
