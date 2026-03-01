/// SKU tier.
enum AzureSkuTier {
  valueBasic("Basic"),
  valueStandard("Standard");

  const AzureSkuTier(this.value);
  final String value;

  static AzureSkuTier fromValue(String value) {
    for (final item in AzureSkuTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSkuTier value: $value');
  }
}

