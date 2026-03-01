/// Delivery mode of the event subscription.
enum DeliveryMode {
  valueQueue("Queue"),
  valuePush("Push");

  const DeliveryMode(this.value);
  final String value;

  static DeliveryMode fromValue(String value) {
    for (final item in DeliveryMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeliveryMode value: $value');
  }
}

