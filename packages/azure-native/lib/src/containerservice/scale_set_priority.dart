/// The Virtual Machine Scale Set priority. If not specified, the default is 'Regular'.
enum ScaleSetPriority {
  valueSpot("Spot"),
  valueRegular("Regular");

  const ScaleSetPriority(this.value);
  final String value;

  static ScaleSetPriority fromValue(String value) {
    for (final item in ScaleSetPriority.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScaleSetPriority value: $value');
  }
}

