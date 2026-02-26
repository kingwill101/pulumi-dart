/// Provides the state of this Vulnerability assessment.
enum VexAssessmentState3 {
  stateUnspecified("STATE_UNSPECIFIED"),
  affected("AFFECTED"),
  notAffected("NOT_AFFECTED"),
  fixed("FIXED"),
  underInvestigation("UNDER_INVESTIGATION");

  const VexAssessmentState3(this.value);
  final String value;

  static VexAssessmentState3 fromValue(String value) {
    for (final item in VexAssessmentState3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VexAssessmentState3 value: $value');
  }
}
