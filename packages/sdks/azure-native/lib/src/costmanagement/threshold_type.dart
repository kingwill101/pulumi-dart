import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of threshold.
///
/// Supported for CategoryType(s): Cost.
enum ThresholdType implements pulumi.PulumiEnum<String> {
  actual("Actual"),
  forecasted("Forecasted");

  const ThresholdType(this.wireValue);
  @override
  final String wireValue;

  static ThresholdType fromValue(String value) {
    for (final item in ThresholdType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ThresholdType value: $value');
  }
}
