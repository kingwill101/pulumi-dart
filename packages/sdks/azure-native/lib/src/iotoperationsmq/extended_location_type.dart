/// Type of ExtendedLocation.
enum ExtendedLocationType {
  customLocation("CustomLocation");

  const ExtendedLocationType(this.wireValue);
  final String wireValue;

  static ExtendedLocationType fromValue(String value) {
    for (final item in ExtendedLocationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExtendedLocationType value: $value');
  }
}
