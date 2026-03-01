/// Name of the pricing tier.
enum SkuName {
  valueClassicAzureFrontDoor("Classic_AzureFrontDoor"),
  valueStandardAzureFrontDoor("Standard_AzureFrontDoor"),
  valuePremiumAzureFrontDoor("Premium_AzureFrontDoor");

  const SkuName(this.value);
  final String value;

  static SkuName fromValue(String value) {
    for (final item in SkuName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuName value: $value');
  }
}

