/// Defines the mode of the Order item.
enum OrderMode {
  default_("Default"),
  doNotFulfill("DoNotFulfill");

  const OrderMode(this.wireValue);
  final String wireValue;

  static OrderMode fromValue(String value) {
    for (final item in OrderMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrderMode value: $value');
  }
}
