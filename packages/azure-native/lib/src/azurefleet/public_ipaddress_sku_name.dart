/// Specify public IP sku name
enum PublicIPAddressSkuName {
  basic("Basic"),
  standard("Standard");

  const PublicIPAddressSkuName(this.value);
  final String value;

  static PublicIPAddressSkuName fromValue(String value) {
    for (final item in PublicIPAddressSkuName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicIPAddressSkuName value: $value');
  }
}

