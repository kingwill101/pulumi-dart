/// Type of product filter.
enum SupportedFilterTypes {
  shipToCountries("ShipToCountries"),
  doubleEncryptionStatus("DoubleEncryptionStatus");

  const SupportedFilterTypes(this.value);
  final String value;

  static SupportedFilterTypes fromValue(String value) {
    for (final item in SupportedFilterTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SupportedFilterTypes value: $value');
  }
}

