/// The evaluator type of the policy (i.e. AllowedValuesPolicy, MaxValuePolicy).
enum PolicyEvaluatorType {
  allowedValuesPolicy("AllowedValuesPolicy"),
  maxValuePolicy("MaxValuePolicy");

  const PolicyEvaluatorType(this.wireValue);
  final String wireValue;

  static PolicyEvaluatorType fromValue(String value) {
    for (final item in PolicyEvaluatorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyEvaluatorType value: $value');
  }
}
