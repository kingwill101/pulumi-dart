/// Assessment sizing criterion.
enum AssessmentSizingCriterion {
  performanceBased("PerformanceBased"),
  asOnPremises("AsOnPremises");

  const AssessmentSizingCriterion(this.value);
  final String value;

  static AssessmentSizingCriterion fromValue(String value) {
    for (final item in AssessmentSizingCriterion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssessmentSizingCriterion value: $value');
  }
}

