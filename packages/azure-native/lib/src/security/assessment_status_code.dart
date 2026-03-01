/// Programmatic code for the status of the assessment
enum AssessmentStatusCode {
  valueHealthy("Healthy"),
  valueUnhealthy("Unhealthy"),
  valueNotApplicable("NotApplicable");

  const AssessmentStatusCode(this.value);
  final String value;

  static AssessmentStatusCode fromValue(String value) {
    for (final item in AssessmentStatusCode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssessmentStatusCode value: $value');
  }
}

