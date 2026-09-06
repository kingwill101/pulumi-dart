import 'package:pulumi/pulumi.dart' as pulumi;

/// The extent of deviation required to trigger an alert. This will affect how tight the threshold is to the metric series pattern.
enum DynamicThresholdSensitivity implements pulumi.PulumiEnum<String> {
  valueLow("Low"),
  valueMedium("Medium"),
  valueHigh("High");

  const DynamicThresholdSensitivity(this.wireValue);
  @override
  final String wireValue;

  static DynamicThresholdSensitivity fromValue(String value) {
    for (final item in DynamicThresholdSensitivity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DynamicThresholdSensitivity value: $value');
  }
}
