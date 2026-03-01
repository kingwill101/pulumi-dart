/// The required feature policy.
enum FeaturesPolicy {
  any("Any"),
  all("All");

  const FeaturesPolicy(this.value);
  final String value;

  static FeaturesPolicy fromValue(String value) {
    for (final item in FeaturesPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeaturesPolicy value: $value');
  }
}

