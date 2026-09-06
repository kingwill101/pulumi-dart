import 'package:pulumi/pulumi.dart' as pulumi;

/// Address prefix type.
enum AddressPrefixType implements pulumi.PulumiEnum<String> {
  valueIPPrefix("IPPrefix"),
  valueServiceTag("ServiceTag");

  const AddressPrefixType(this.wireValue);
  @override
  final String wireValue;

  static AddressPrefixType fromValue(String value) {
    for (final item in AddressPrefixType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressPrefixType value: $value');
  }
}
