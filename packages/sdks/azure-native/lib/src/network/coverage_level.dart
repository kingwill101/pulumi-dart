import 'package:pulumi/pulumi.dart' as pulumi;

/// Test coverage for the endpoint.
enum CoverageLevel implements pulumi.PulumiEnum<String> {
  valueDefault("Default"),
  valueLow("Low"),
  valueBelowAverage("BelowAverage"),
  valueAverage("Average"),
  valueAboveAverage("AboveAverage"),
  valueFull("Full");

  const CoverageLevel(this.wireValue);
  @override
  final String wireValue;

  static CoverageLevel fromValue(String value) {
    for (final item in CoverageLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CoverageLevel value: $value');
  }
}
