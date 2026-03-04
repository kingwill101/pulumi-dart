/// Type of product filter.
enum SupportedFilterTypes {
  shipToCountries("ShipToCountries"),
  doubleEncryptionStatus("DoubleEncryptionStatus");

  const SupportedFilterTypes(this.wireValue);
  final String wireValue;

  static SupportedFilterTypes fromValue(String value) {
    for (final item in SupportedFilterTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SupportedFilterTypes value: $value');
  }
}
