/// Indicates whether Azure Hybrid Benefit is opted in
enum AzureHybridBenefit {
  valueTrue("True"),
  valueFalse("False"),
  valueNotApplicable("NotApplicable");

  const AzureHybridBenefit(this.value);
  final String value;

  static AzureHybridBenefit fromValue(String value) {
    for (final item in AzureHybridBenefit.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureHybridBenefit value: $value');
  }
}

