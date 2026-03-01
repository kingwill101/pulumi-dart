/// Specifies the feature set supported by the new organization. Each feature set supports different levels of functionality.
enum FeatureSet {
  aLL("ALL"),
  cONSOLIDATEDBILLING("CONSOLIDATED_BILLING");

  const FeatureSet(this.value);
  final String value;

  static FeatureSet fromValue(String value) {
    for (final item in FeatureSet.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeatureSet value: $value');
  }
}

