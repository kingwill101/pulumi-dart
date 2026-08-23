/// Name of the pricing tier.
enum SkuName {
  classicAzureFrontDoor("Classic_AzureFrontDoor"),
  standardAzureFrontDoor("Standard_AzureFrontDoor"),
  premiumAzureFrontDoor("Premium_AzureFrontDoor");

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
