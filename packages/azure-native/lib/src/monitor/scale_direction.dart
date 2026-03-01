/// the scale direction. Whether the scaling action increases or decreases the number of instances.
enum ScaleDirection {
  valueNone("None"),
  valueIncrease("Increase"),
  valueDecrease("Decrease");

  const ScaleDirection(this.value);
  final String value;

  static ScaleDirection fromValue(String value) {
    for (final item in ScaleDirection.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScaleDirection value: $value');
  }
}

