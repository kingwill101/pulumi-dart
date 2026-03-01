/// Order item type.
enum OrderItemType {
  purchase("Purchase"),
  rental("Rental"),
  external("External");

  const OrderItemType(this.value);
  final String value;

  static OrderItemType fromValue(String value) {
    for (final item in OrderItemType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrderItemType value: $value');
  }
}

