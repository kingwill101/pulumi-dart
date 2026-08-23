/// The name of the assessment template whose rules will be evaluated (e.g. 'Edu'). Immutable after creation.
enum AssessmentType {
  edu("Edu"),
  businessVerification("BusinessVerification"),
  payeeEnrollment("PayeeEnrollment"),
  payeeProfile("PayeeProfile");

  const AssessmentType(this.wireValue);
  final String wireValue;

  static AssessmentType fromValue(String value) {
    for (final item in AssessmentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssessmentType value: $value');
  }
}
