import 'package:pulumi/pulumi.dart' as pulumi;

/// Sku name
enum ElasticSanSkuName implements pulumi.PulumiEnum<String> {
  premiumLRS("Premium_LRS"),
  premiumZRS("Premium_ZRS");

  const ElasticSanSkuName(this.wireValue);
  @override
  final String wireValue;

  static ElasticSanSkuName fromValue(String value) {
    for (final item in ElasticSanSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ElasticSanSkuName value: $value');
  }
}
