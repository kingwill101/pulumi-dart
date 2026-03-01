/// Supported values: Protected, Locked
enum PricingPolicy {
  protected("Protected"),
  locked("Locked");

  const PricingPolicy(this.value);
  final String value;

  static PricingPolicy fromValue(String value) {
    for (final item in PricingPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PricingPolicy value: $value');
  }
}

