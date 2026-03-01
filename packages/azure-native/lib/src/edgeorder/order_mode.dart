/// Defines the mode of the Order item.
enum OrderMode {
  default_("Default"),
  doNotFulfill("DoNotFulfill");

  const OrderMode(this.value);
  final String value;

  static OrderMode fromValue(String value) {
    for (final item in OrderMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrderMode value: $value');
  }
}

