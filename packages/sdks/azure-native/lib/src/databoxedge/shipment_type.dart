/// ShipmentType of the order
enum ShipmentType {
  valueNotApplicable("NotApplicable"),
  valueShippedToCustomer("ShippedToCustomer"),
  valueSelfPickup("SelfPickup");

  const ShipmentType(this.value);
  final String value;

  static ShipmentType fromValue(String value) {
    for (final item in ShipmentType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShipmentType value: $value');
  }
}

