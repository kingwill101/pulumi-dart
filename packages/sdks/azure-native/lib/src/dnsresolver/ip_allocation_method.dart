import 'package:pulumi/pulumi.dart' as pulumi;

/// Private IP address allocation method.
enum IpAllocationMethod implements pulumi.PulumiEnum<String> {
  valueStatic("Static"),
  valueDynamic("Dynamic");

  const IpAllocationMethod(this.wireValue);
  @override
  final String wireValue;

  static IpAllocationMethod fromValue(String value) {
    for (final item in IpAllocationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpAllocationMethod value: $value');
  }
}
