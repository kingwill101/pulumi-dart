/// [Required] The feature attribution metric to calculate.
enum FeatureAttributionMetric {
  valueNormalizedDiscountedCumulativeGain("NormalizedDiscountedCumulativeGain");

  const FeatureAttributionMetric(this.value);
  final String value;

  static FeatureAttributionMetric fromValue(String value) {
    for (final item in FeatureAttributionMetric.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeatureAttributionMetric value: $value');
  }
}

