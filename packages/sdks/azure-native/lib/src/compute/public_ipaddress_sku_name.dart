/// Specify public IP sku name
enum PublicIPAddressSkuName {
  basic("Basic"),
  standard("Standard");

  const PublicIPAddressSkuName(this.wireValue);
  final String wireValue;

  static PublicIPAddressSkuName fromValue(String value) {
    for (final item in PublicIPAddressSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicIPAddressSkuName value: $value');
  }
}
