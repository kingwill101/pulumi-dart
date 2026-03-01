/// Sku name
enum ElasticSanSkuName {
  premiumLRS("Premium_LRS"),
  premiumZRS("Premium_ZRS");

  const ElasticSanSkuName(this.value);
  final String value;

  static ElasticSanSkuName fromValue(String value) {
    for (final item in ElasticSanSkuName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ElasticSanSkuName value: $value');
  }
}

