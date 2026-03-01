/// The evaluator type of the policy (i.e. AllowedValuesPolicy, MaxValuePolicy).
enum PolicyEvaluatorType {
  allowedValuesPolicy("AllowedValuesPolicy"),
  maxValuePolicy("MaxValuePolicy");

  const PolicyEvaluatorType(this.value);
  final String value;

  static PolicyEvaluatorType fromValue(String value) {
    for (final item in PolicyEvaluatorType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyEvaluatorType value: $value');
  }
}

