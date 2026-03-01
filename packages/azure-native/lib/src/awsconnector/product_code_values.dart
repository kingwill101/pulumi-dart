/// Property value
enum ProductCodeValues {
  devpay("devpay"),
  marketplace("marketplace");

  const ProductCodeValues(this.value);
  final String value;

  static ProductCodeValues fromValue(String value) {
    for (final item in ProductCodeValues.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProductCodeValues value: $value');
  }
}

