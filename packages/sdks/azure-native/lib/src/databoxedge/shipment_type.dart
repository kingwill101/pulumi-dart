import 'package:pulumi/pulumi.dart' as pulumi;

/// ShipmentType of the order
enum ShipmentType implements pulumi.PulumiEnum<String> {
  valueNotApplicable("NotApplicable"),
  valueShippedToCustomer("ShippedToCustomer"),
  valueSelfPickup("SelfPickup");

  const ShipmentType(this.wireValue);
  @override
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
