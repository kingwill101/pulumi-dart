/// Flag for generating lags for the numeric features with 'auto' or null.
enum FeatureLags {
  valueNone("None"),
  valueAuto("Auto");

  const FeatureLags(this.value);
  final String value;

  static FeatureLags fromValue(String value) {
    for (final item in FeatureLags.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeatureLags value: $value');
  }
}

