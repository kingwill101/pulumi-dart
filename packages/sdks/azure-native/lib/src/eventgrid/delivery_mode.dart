/// Delivery mode of the event subscription.
enum DeliveryMode {
  valueQueue("Queue"),
  valuePush("Push");

  const DeliveryMode(this.wireValue);
  final String wireValue;

  static DeliveryMode fromValue(String value) {
    for (final item in DeliveryMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeliveryMode value: $value');
  }
}
