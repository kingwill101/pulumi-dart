/// The policy exemption category. Possible values are Waiver and Mitigated.
enum ExemptionCategory {
  valueWaiver("Waiver"),
  valueMitigated("Mitigated");

  const ExemptionCategory(this.value);
  final String value;

  static ExemptionCategory fromValue(String value) {
    for (final item in ExemptionCategory.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExemptionCategory value: $value');
  }
}

