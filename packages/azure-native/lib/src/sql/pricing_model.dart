/// Pricing model of Managed Instance.
enum PricingModel {
  valueRegular("Regular"),
  valueFreemium("Freemium");

  const PricingModel(this.value);
  final String value;

  static PricingModel fromValue(String value) {
    for (final item in PricingModel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PricingModel value: $value');
  }
}

