/// The online availability of the Product. Default to Availability.IN_STOCK. Corresponding properties: Google Merchant Center property [availability](https://support.google.com/merchants/answer/6324448). Schema.org property [Offer.availability](https://schema.org/availability).
enum ProductAvailability3 {
  availabilityUnspecified("AVAILABILITY_UNSPECIFIED"),
  inStock("IN_STOCK"),
  outOfStock("OUT_OF_STOCK"),
  preorder("PREORDER"),
  backorder("BACKORDER");

  const ProductAvailability3(this.value);
  final String value;

  static ProductAvailability3 fromValue(String value) {
    for (final item in ProductAvailability3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProductAvailability3 value: $value');
  }
}
