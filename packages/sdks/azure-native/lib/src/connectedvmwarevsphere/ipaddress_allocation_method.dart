import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the nic allocation method.
enum IPAddressAllocationMethod implements pulumi.PulumiEnum<String> {
  valueUnset("unset"),
  valueDynamic("dynamic"),
  valueStatic("static"),
  valueLinklayer("linklayer"),
  valueRandom("random"),
  valueOther("other");

  const IPAddressAllocationMethod(this.wireValue);
  @override
  final String wireValue;

  static IPAddressAllocationMethod fromValue(String value) {
    for (final item in IPAddressAllocationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPAddressAllocationMethod value: $value');
  }
}
