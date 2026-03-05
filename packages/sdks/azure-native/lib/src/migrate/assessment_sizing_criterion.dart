/// Assessment sizing criterion.
enum AssessmentSizingCriterion {
  performanceBased("PerformanceBased"),
  asOnPremises("AsOnPremises");

  const AssessmentSizingCriterion(this.wireValue);
  final String wireValue;

  static AssessmentSizingCriterion fromValue(String value) {
    for (final item in AssessmentSizingCriterion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssessmentSizingCriterion value: $value');
  }
}

