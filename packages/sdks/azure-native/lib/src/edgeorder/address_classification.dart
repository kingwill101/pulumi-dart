import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of address based on its usage context.
enum AddressClassification implements pulumi.PulumiEnum<String> {
  shipping("Shipping"),
  site("Site");

  const AddressClassification(this.wireValue);
  @override
  final String wireValue;

  static AddressClassification fromValue(String value) {
    for (final item in AddressClassification.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressClassification value: $value');
  }
}
