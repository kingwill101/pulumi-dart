/// Provides the state of this Vulnerability assessment.
enum AssessmentState3 {
  stateUnspecified("STATE_UNSPECIFIED"),
  affected("AFFECTED"),
  notAffected("NOT_AFFECTED"),
  fixed("FIXED"),
  underInvestigation("UNDER_INVESTIGATION");

  const AssessmentState3(this.value);
  final String value;

  static AssessmentState3 fromValue(String value) {
    for (final item in AssessmentState3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssessmentState3 value: $value');
  }
}
