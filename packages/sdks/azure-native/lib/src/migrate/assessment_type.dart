/// Assessment type of the assessment.
enum AssessmentType {
  valueUnknown("Unknown"),
  valueMachineAssessment("MachineAssessment"),
  valueAvsAssessment("AvsAssessment"),
  valueSqlAssessment("SqlAssessment"),
  valueWebAppAssessment("WebAppAssessment");

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
