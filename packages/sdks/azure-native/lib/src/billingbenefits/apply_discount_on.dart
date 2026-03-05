/// The customer action on which the discount is applied. Supported values are Purchase, Consume, and Renew. Validation: Required, one of supported values.
enum ApplyDiscountOn {
  purchase("Purchase"),
  consume("Consume"),
  renew("Renew");

  const ApplyDiscountOn(this.wireValue);
  final String wireValue;

  static ApplyDiscountOn fromValue(String value) {
    for (final item in ApplyDiscountOn.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplyDiscountOn value: $value');
  }
}

