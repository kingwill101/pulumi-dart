/// [Required] The feature attribution metric to calculate.
enum FeatureAttributionMetric {
  normalizedDiscountedCumulativeGain("NormalizedDiscountedCumulativeGain");

  const FeatureAttributionMetric(this.wireValue);
  final String wireValue;

  static FeatureAttributionMetric fromValue(String value) {
    for (final item in FeatureAttributionMetric.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeatureAttributionMetric value: $value');
  }
}
