/// The sku name.
enum SkuName {
  valuePremiumLRS("Premium_LRS"),
  valuePremiumZRS("Premium_ZRS");

  const SkuName(this.wireValue);
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
