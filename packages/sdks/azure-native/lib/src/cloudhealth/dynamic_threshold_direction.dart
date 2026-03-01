/// Threshold direction
enum DynamicThresholdDirection {
  lowerThan("LowerThan"),
  greaterThan("GreaterThan"),
  greaterOrLowerThan("GreaterOrLowerThan");

  const DynamicThresholdDirection(this.value);
  final String value;

  static DynamicThresholdDirection fromValue(String value) {
    for (final item in DynamicThresholdDirection.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DynamicThresholdDirection value: $value');
  }
}

