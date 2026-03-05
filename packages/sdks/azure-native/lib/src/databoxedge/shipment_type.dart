/// ShipmentType of the order
enum ShipmentType {
  valueNotApplicable("NotApplicable"),
  valueShippedToCustomer("ShippedToCustomer"),
  valueSelfPickup("SelfPickup");

  const ShipmentType(this.wireValue);
  final String wireValue;

  static ShipmentType fromValue(String value) {
    for (final item in ShipmentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShipmentType value: $value');
  }
}

