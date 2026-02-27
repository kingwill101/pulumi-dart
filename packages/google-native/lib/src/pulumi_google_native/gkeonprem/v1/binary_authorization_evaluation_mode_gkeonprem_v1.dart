/// Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
enum BinaryAuthorizationEvaluationModeGkeonpremV1 {
  evaluationModeUnspecified("EVALUATION_MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  projectSingletonPolicyEnforce("PROJECT_SINGLETON_POLICY_ENFORCE");

  const BinaryAuthorizationEvaluationModeGkeonpremV1(this.value);
  final String value;

  static BinaryAuthorizationEvaluationModeGkeonpremV1 fromValue(String value) {
    for (final item in BinaryAuthorizationEvaluationModeGkeonpremV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown BinaryAuthorizationEvaluationModeGkeonpremV1 value: $value');
  }
}
