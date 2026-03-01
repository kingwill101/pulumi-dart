/// Provides the state of this Vulnerability assessment.
enum VexAssessmentStateContaineranalysisV1beta1 {
  stateUnspecified("STATE_UNSPECIFIED"),
  affected("AFFECTED"),
  notAffected("NOT_AFFECTED"),
  fixed("FIXED"),
  underInvestigation("UNDER_INVESTIGATION");

  const VexAssessmentStateContaineranalysisV1beta1(this.value);
  final String value;

  static VexAssessmentStateContaineranalysisV1beta1 fromValue(String value) {
    for (final item in VexAssessmentStateContaineranalysisV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown VexAssessmentStateContaineranalysisV1beta1 value: $value',
    );
  }
}
