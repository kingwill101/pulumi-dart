/// SKU name to specify whether the key vault is a standard vault or a premium vault.
enum SkuName {
  valueStandard("standard"),
  valuePremium("premium");

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

