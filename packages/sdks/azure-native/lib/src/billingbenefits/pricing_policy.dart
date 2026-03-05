/// Supported values: Protected, Locked
enum PricingPolicy {
  protected("Protected"),
  locked("Locked");

  const PricingPolicy(this.wireValue);
  final String wireValue;

  static PricingPolicy fromValue(String value) {
    for (final item in PricingPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PricingPolicy value: $value');
  }
}

