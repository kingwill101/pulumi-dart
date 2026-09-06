import 'package:pulumi/pulumi.dart' as pulumi;

/// Specify the public IP allocation type
enum PublicIPAllocationMethod implements pulumi.PulumiEnum<String> {
  dynamic_("Dynamic"),
  static("Static");

  const PublicIPAllocationMethod(this.wireValue);
  @override
  final String wireValue;

  static PublicIPAllocationMethod fromValue(String value) {
    for (final item in PublicIPAllocationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicIPAllocationMethod value: $value');
  }
}
