/// The customer action on which the discount is applied. Supported values are Purchase, Consume, and Renew. Validation: Required, one of supported values.
enum ApplyDiscountOn {
  purchase("Purchase"),
  consume("Consume"),
  renew("Renew");

  const ApplyDiscountOn(this.value);
  final String value;

  static ApplyDiscountOn fromValue(String value) {
    for (final item in ApplyDiscountOn.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplyDiscountOn value: $value');
  }
}

