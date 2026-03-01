/// Defines the type of discount. Supported values are ProductFamily, Product, Sku, CustomPrice, and CustomPriceMultiCurrency.
enum DiscountType {
  productFamily("ProductFamily"),
  product("Product"),
  sku("Sku"),
  customPrice("CustomPrice"),
  customPriceMultiCurrency("CustomPriceMultiCurrency");

  const DiscountType(this.value);
  final String value;

  static DiscountType fromValue(String value) {
    for (final item in DiscountType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscountType value: $value');
  }
}

