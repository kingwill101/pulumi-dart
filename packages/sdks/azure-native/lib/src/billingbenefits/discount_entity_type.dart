/// This defines whether the entity being created is primary or affiliate. Supported values: primary, affiliate. Validation: Required, must match one of the 2 values.
enum DiscountEntityType {
  primary("Primary"),
  affiliate("Affiliate");

  const DiscountEntityType(this.wireValue);
  final String wireValue;

  static DiscountEntityType fromValue(String value) {
    for (final item in DiscountEntityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscountEntityType value: $value');
  }
}

