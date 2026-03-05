/// User configurable setting that describes the status of the assessment.
enum AssessmentStage {
  valueInProgress("InProgress"),
  valueUnderReview("UnderReview"),
  valueApproved("Approved");

  const AssessmentStage(this.wireValue);
  final String wireValue;

  static AssessmentStage fromValue(String value) {
    for (final item in AssessmentStage.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssessmentStage value: $value');
  }
}

