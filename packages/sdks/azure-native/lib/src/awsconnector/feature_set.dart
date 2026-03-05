/// Specifies the feature set supported by the new organization. Each feature set supports different levels of functionality.
enum FeatureSet {
  aLL("ALL"),
  cONSOLIDATEDBILLING("CONSOLIDATED_BILLING");

  const FeatureSet(this.wireValue);
  final String wireValue;

  static FeatureSet fromValue(String value) {
    for (final item in FeatureSet.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeatureSet value: $value');
  }
}

