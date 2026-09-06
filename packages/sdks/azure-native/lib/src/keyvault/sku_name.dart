import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU name to specify whether the key vault is a standard vault or a premium vault.
enum SkuName implements pulumi.PulumiEnum<String> {
  valueStandard("standard"),
  valuePremium("premium");

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
