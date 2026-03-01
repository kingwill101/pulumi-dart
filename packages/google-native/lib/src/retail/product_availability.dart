/// The online availability of the Product. Default to Availability.IN_STOCK. Corresponding properties: Google Merchant Center property [availability](https://support.google.com/merchants/answer/6324448). Schema.org property [Offer.availability](https://schema.org/availability).
enum ProductAvailability {
  availabilityUnspecified("AVAILABILITY_UNSPECIFIED"),
  inStock("IN_STOCK"),
  outOfStock("OUT_OF_STOCK"),
  preorder("PREORDER"),
  backorder("BACKORDER");

  const ProductAvailability(this.value);
  final String value;

  static ProductAvailability fromValue(String value) {
    for (final item in ProductAvailability.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProductAvailability value: $value');
  }
}
