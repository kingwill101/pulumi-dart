/// The type of the extended location.
enum ExtendedLocationType {
  edgeZone("EdgeZone"),
  customLocation("CustomLocation");

  const ExtendedLocationType(this.value);
  final String value;

  static ExtendedLocationType fromValue(String value) {
    for (final item in ExtendedLocationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExtendedLocationType value: $value');
  }
}

