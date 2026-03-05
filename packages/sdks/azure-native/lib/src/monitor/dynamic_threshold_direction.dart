/// Threshold direction
enum DynamicThresholdDirection {
  lowerThan("LowerThan"),
  greaterThan("GreaterThan"),
  greaterOrLowerThan("GreaterOrLowerThan");

  const DynamicThresholdDirection(this.wireValue);
  final String wireValue;

  static DynamicThresholdDirection fromValue(String value) {
    for (final item in DynamicThresholdDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DynamicThresholdDirection value: $value');
  }
}

