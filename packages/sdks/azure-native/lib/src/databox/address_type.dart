import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of address.
enum AddressType implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueResidential("Residential"),
  valueCommercial("Commercial");

  const AddressType(this.wireValue);
  @override
  final String wireValue;

  static AddressType fromValue(String value) {
    for (final item in AddressType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressType value: $value');
  }
}
