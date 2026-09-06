import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU family name
enum SkuFamily implements pulumi.PulumiEnum<String> {
  valueA("A");

  const SkuFamily(this.wireValue);
  @override
  final String wireValue;

  static SkuFamily fromValue(String value) {
    for (final item in SkuFamily.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuFamily value: $value');
  }
}
