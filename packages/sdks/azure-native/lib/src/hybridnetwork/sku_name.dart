import 'package:pulumi/pulumi.dart' as pulumi;

/// Name of this Sku
enum SkuName implements pulumi.PulumiEnum<String> {
  valueBasic("Basic"),
  valueStandard("Standard");

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
