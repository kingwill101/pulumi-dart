/// Billing tier for this messaging flow
enum FlowBillingTier {
  valueBlobTransport("BlobTransport"),
  valueStandard("Standard"),
  valuePremium("Premium");

  const FlowBillingTier(this.value);
  final String value;

  static FlowBillingTier fromValue(String value) {
    for (final item in FlowBillingTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FlowBillingTier value: $value');
  }
}

