import 'package:pulumi/pulumi.dart' as pulumi;

/// Order item type.
enum OrderItemType implements pulumi.PulumiEnum<String> {
  purchase("Purchase"),
  rental("Rental"),
  external("External");

  const OrderItemType(this.wireValue);
  @override
  final String wireValue;

  static OrderItemType fromValue(String value) {
    for (final item in OrderItemType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrderItemType value: $value');
  }
}
