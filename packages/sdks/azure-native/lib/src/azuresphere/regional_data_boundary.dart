/// Regional data boundary for an image
enum RegionalDataBoundary {
  none("None"),
  eU("EU");

  const RegionalDataBoundary(this.wireValue);
  final String wireValue;

  static RegionalDataBoundary fromValue(String value) {
    for (final item in RegionalDataBoundary.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionalDataBoundary value: $value');
  }
}
