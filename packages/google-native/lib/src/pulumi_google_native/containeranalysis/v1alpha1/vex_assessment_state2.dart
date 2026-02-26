/// Provides the state of this Vulnerability assessment.
enum VexAssessmentState2 {
  stateUnspecified("STATE_UNSPECIFIED"),
  affected("AFFECTED"),
  notAffected("NOT_AFFECTED"),
  fixed("FIXED"),
  underInvestigation("UNDER_INVESTIGATION");

  const VexAssessmentState2(this.value);
  final String value;

  static VexAssessmentState2 fromValue(String value) {
    for (final item in VexAssessmentState2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VexAssessmentState2 value: $value');
  }
}
