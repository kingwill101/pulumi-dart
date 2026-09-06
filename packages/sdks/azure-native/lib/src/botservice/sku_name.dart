import 'package:pulumi/pulumi.dart' as pulumi;

/// The sku name
enum SkuName implements pulumi.PulumiEnum<String> {
  f0("F0"),
  s1("S1");

  const SkuName(this.wireValue);
  @override
  final String wireValue;

  static SkuName fromValue(String value) {
    for (final item in SkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuName value: $value');
  }
}
