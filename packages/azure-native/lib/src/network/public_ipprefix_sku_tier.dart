/// Tier of a public IP prefix SKU.
enum PublicIPPrefixSkuTier {
  valueRegional("Regional"),
  valueGlobal("Global");

  const PublicIPPrefixSkuTier(this.value);
  final String value;

  static PublicIPPrefixSkuTier fromValue(String value) {
    for (final item in PublicIPPrefixSkuTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicIPPrefixSkuTier value: $value');
  }
}

