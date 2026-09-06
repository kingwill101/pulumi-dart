import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] The feature attribution metric to calculate.
enum FeatureAttributionMetric implements pulumi.PulumiEnum<String> {
  normalizedDiscountedCumulativeGain("NormalizedDiscountedCumulativeGain");

  const FeatureAttributionMetric(this.wireValue);
  @override
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
