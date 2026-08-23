/// the scale direction. Whether the scaling action increases or decreases the number of instances.
enum ScaleDirection {
  valueNone("None"),
  valueIncrease("Increase"),
  valueDecrease("Decrease");

  const ScaleDirection(this.wireValue);
  final String wireValue;

  static ScaleDirection fromValue(String value) {
    for (final item in ScaleDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScaleDirection value: $value');
  }
}
