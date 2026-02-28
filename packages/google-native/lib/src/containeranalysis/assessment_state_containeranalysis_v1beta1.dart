/// Provides the state of this Vulnerability assessment.
enum AssessmentStateContaineranalysisV1beta1 {
  stateUnspecified("STATE_UNSPECIFIED"),
  affected("AFFECTED"),
  notAffected("NOT_AFFECTED"),
  fixed("FIXED"),
  underInvestigation("UNDER_INVESTIGATION");

  const AssessmentStateContaineranalysisV1beta1(this.value);
  final String value;

  static AssessmentStateContaineranalysisV1beta1 fromValue(String value) {
    for (final item in AssessmentStateContaineranalysisV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssessmentStateContaineranalysisV1beta1 value: $value');
  }
}

