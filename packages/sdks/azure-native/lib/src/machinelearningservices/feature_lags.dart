/// Flag for generating lags for the numeric features with 'auto' or null.
enum FeatureLags {
  valueNone("None"),
  valueAuto("Auto");

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
