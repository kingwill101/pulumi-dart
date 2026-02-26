/// Optional. The type of basis used to determine if spend has passed the threshold. Behavior defaults to CURRENT_SPEND if not set.
enum GoogleCloudBillingBudgetsV1ThresholdRuleSpendBasis {
  basisUnspecified("BASIS_UNSPECIFIED"),
  currentSpend("CURRENT_SPEND"),
  forecastedSpend("FORECASTED_SPEND");

  const GoogleCloudBillingBudgetsV1ThresholdRuleSpendBasis(this.value);
  final String value;

  static GoogleCloudBillingBudgetsV1ThresholdRuleSpendBasis fromValue(
      String value) {
    for (final item
        in GoogleCloudBillingBudgetsV1ThresholdRuleSpendBasis.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudBillingBudgetsV1ThresholdRuleSpendBasis value: $value');
  }
}
