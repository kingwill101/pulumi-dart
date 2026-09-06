import 'package:pulumi/pulumi.dart' as pulumi;

/// Specify public IP sku name
enum PublicIPAddressSkuName implements pulumi.PulumiEnum<String> {
  basic("Basic"),
  standard("Standard");

  const PublicIPAddressSkuName(this.wireValue);
  @override
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
