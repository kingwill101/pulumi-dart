/// Regional data boundary for an image
enum RegionalDataBoundary {
  none("None"),
  eU("EU");

  const RegionalDataBoundary(this.value);
  final String value;

  static RegionalDataBoundary fromValue(String value) {
    for (final item in RegionalDataBoundary.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionalDataBoundary value: $value');
  }
}

