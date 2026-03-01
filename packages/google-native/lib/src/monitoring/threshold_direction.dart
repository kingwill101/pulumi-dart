/// The direction for the current threshold. Direction is not allowed in a XyChart.
enum ThresholdDirection {
  directionUnspecified("DIRECTION_UNSPECIFIED"),
  above("ABOVE"),
  below("BELOW");

  const ThresholdDirection(this.value);
  final String value;

  static ThresholdDirection fromValue(String value) {
    for (final item in ThresholdDirection.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ThresholdDirection value: $value');
  }
}
