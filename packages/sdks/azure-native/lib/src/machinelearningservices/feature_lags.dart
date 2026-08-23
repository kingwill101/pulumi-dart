/// Flag for generating lags for the numeric features.
enum FeatureLags {
  none("None"),
  auto("Auto");

  const FeatureLags(this.wireValue);
  final String wireValue;

  static FeatureLags fromValue(String value) {
    for (final item in FeatureLags.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeatureLags value: $value');
  }
}
