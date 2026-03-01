/// Name of a public IP prefix SKU.
enum PublicIPPrefixSkuName {
  valueStandard("Standard");

  const PublicIPPrefixSkuName(this.value);
  final String value;

  static PublicIPPrefixSkuName fromValue(String value) {
    for (final item in PublicIPPrefixSkuName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicIPPrefixSkuName value: $value');
  }
}

