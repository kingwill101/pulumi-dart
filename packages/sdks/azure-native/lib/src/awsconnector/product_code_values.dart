/// Property value
enum ProductCodeValues {
  devpay("devpay"),
  marketplace("marketplace");

  const ProductCodeValues(this.wireValue);
  final String wireValue;

  static ProductCodeValues fromValue(String value) {
    for (final item in ProductCodeValues.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProductCodeValues value: $value');
  }
}
