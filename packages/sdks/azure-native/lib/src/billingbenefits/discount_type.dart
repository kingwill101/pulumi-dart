import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the type of discount. Supported values are ProductFamily, Product, Sku, CustomPrice, and CustomPriceMultiCurrency.
enum DiscountType implements pulumi.PulumiEnum<String> {
  productFamily("ProductFamily"),
  product("Product"),
  sku("Sku"),
  customPrice("CustomPrice"),
  customPriceMultiCurrency("CustomPriceMultiCurrency");

  const DiscountType(this.wireValue);
  @override
  final String wireValue;

  static DiscountType fromValue(String value) {
    for (final item in DiscountType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscountType value: $value');
  }
}
