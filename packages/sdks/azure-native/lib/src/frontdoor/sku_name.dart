import 'package:pulumi/pulumi.dart' as pulumi;

/// Name of the pricing tier.
enum SkuName implements pulumi.PulumiEnum<String> {
  classicAzureFrontDoor("Classic_AzureFrontDoor"),
  standardAzureFrontDoor("Standard_AzureFrontDoor"),
  premiumAzureFrontDoor("Premium_AzureFrontDoor");

  const SkuName(this.wireValue);
  @override
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
