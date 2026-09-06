import 'package:pulumi/pulumi.dart' as pulumi;

/// The method that private IP address is allocated.
enum PrivateIPAllocationMethod implements pulumi.PulumiEnum<String> {
  valueDynamic("dynamic"),
  valueStatic("static");

  const PrivateIPAllocationMethod(this.wireValue);
  @override
  final String wireValue;

  static PrivateIPAllocationMethod fromValue(String value) {
    for (final item in PrivateIPAllocationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateIPAllocationMethod value: $value');
  }
}
