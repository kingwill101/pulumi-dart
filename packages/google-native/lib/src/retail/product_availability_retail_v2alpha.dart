/// The online availability of the Product. Default to Availability.IN_STOCK. Corresponding properties: Google Merchant Center property [availability](https://support.google.com/merchants/answer/6324448). Schema.org property [Offer.availability](https://schema.org/availability).
enum ProductAvailabilityRetailV2alpha {
  availabilityUnspecified("AVAILABILITY_UNSPECIFIED"),
  inStock("IN_STOCK"),
  outOfStock("OUT_OF_STOCK"),
  preorder("PREORDER"),
  backorder("BACKORDER");

  const ProductAvailabilityRetailV2alpha(this.value);
  final String value;

  static ProductAvailabilityRetailV2alpha fromValue(String value) {
    for (final item in ProductAvailabilityRetailV2alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProductAvailabilityRetailV2alpha value: $value');
  }
}

