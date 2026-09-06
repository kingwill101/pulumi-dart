import 'package:pulumi/pulumi.dart' as pulumi;

/// Device Update Sku
enum SKU implements pulumi.PulumiEnum<String> {
  valueFree("Free"),
  valueStandard("Standard");

  const SKU(this.wireValue);
  @override
  final String wireValue;

  static SKU fromValue(String value) {
    for (final item in SKU.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SKU value: $value');
  }
}
