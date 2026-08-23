/// Specify public IP sku tier
enum PublicIPAddressSkuTier {
  regional("Regional"),
  global("Global");

  const PublicIPAddressSkuTier(this.wireValue);
  final String wireValue;

  static PublicIPAddressSkuTier fromValue(String value) {
    for (final item in PublicIPAddressSkuTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicIPAddressSkuTier value: $value');
  }
}
