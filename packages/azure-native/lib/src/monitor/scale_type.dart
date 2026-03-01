/// the type of action that should occur when the scale rule fires.
enum ScaleType {
  valueChangeCount("ChangeCount"),
  valuePercentChangeCount("PercentChangeCount"),
  valueExactCount("ExactCount"),
  valueServiceAllowedNextValue("ServiceAllowedNextValue");

  const ScaleType(this.value);
  final String value;

  static ScaleType fromValue(String value) {
    for (final item in ScaleType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScaleType value: $value');
  }
}

