/// Provides the state of this Vulnerability assessment.
enum AssessmentState2 {
  stateUnspecified("STATE_UNSPECIFIED"),
  affected("AFFECTED"),
  notAffected("NOT_AFFECTED"),
  fixed("FIXED"),
  underInvestigation("UNDER_INVESTIGATION");

  const AssessmentState2(this.value);
  final String value;

  static AssessmentState2 fromValue(String value) {
    for (final item in AssessmentState2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssessmentState2 value: $value');
  }
}
