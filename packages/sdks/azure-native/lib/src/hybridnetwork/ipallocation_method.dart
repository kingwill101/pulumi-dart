import 'package:pulumi/pulumi.dart' as pulumi;

/// IP address allocation method.
enum IPAllocationMethod implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueStatic("Static"),
  valueDynamic("Dynamic");

  const IPAllocationMethod(this.wireValue);
  @override
  final String wireValue;

  static IPAllocationMethod fromValue(String value) {
    for (final item in IPAllocationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPAllocationMethod value: $value');
  }
}
