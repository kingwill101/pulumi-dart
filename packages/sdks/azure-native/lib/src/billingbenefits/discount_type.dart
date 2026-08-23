/// Defines the type of discount. Supported values are ProductFamily, Product, Sku, CustomPrice, and CustomPriceMultiCurrency.
enum DiscountType {
  productFamily("ProductFamily"),
  product("Product"),
  sku("Sku"),
  customPrice("CustomPrice"),
  customPriceMultiCurrency("CustomPriceMultiCurrency");

  const DiscountType(this.wireValue);
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
