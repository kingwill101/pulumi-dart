/// The policy exemption category. Possible values are Waiver and Mitigated.
enum ExemptionCategory {
  valueWaiver("Waiver"),
  valueMitigated("Mitigated");

  const ExemptionCategory(this.wireValue);
  final String wireValue;

  static ExemptionCategory fromValue(String value) {
    for (final item in ExemptionCategory.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExemptionCategory value: $value');
  }
}

