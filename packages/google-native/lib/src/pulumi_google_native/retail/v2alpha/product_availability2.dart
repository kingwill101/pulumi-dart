/// The online availability of the Product. Default to Availability.IN_STOCK. Corresponding properties: Google Merchant Center property [availability](https://support.google.com/merchants/answer/6324448). Schema.org property [Offer.availability](https://schema.org/availability).
enum ProductAvailability2 {
  availabilityUnspecified("AVAILABILITY_UNSPECIFIED"),
  inStock("IN_STOCK"),
  outOfStock("OUT_OF_STOCK"),
  preorder("PREORDER"),
  backorder("BACKORDER");

  const ProductAvailability2(this.value);
  final String value;

  static ProductAvailability2 fromValue(String value) {
    for (final item in ProductAvailability2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProductAvailability2 value: $value');
  }
}
