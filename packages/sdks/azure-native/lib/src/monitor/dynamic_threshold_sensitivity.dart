/// The extent of deviation required to trigger an alert. This will affect how tight the threshold is to the metric series pattern.
enum DynamicThresholdSensitivity {
  valueLow("Low"),
  valueMedium("Medium"),
  valueHigh("High");

  const DynamicThresholdSensitivity(this.wireValue);
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

