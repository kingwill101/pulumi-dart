/// Sku name
enum ElasticSanSkuName {
  premiumLRS("Premium_LRS"),
  premiumZRS("Premium_ZRS");

  const ElasticSanSkuName(this.wireValue);
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
