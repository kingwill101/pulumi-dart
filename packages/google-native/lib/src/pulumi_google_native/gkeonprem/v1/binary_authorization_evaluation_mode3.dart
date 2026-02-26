/// Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
enum BinaryAuthorizationEvaluationMode3 {
  evaluationModeUnspecified("EVALUATION_MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  projectSingletonPolicyEnforce("PROJECT_SINGLETON_POLICY_ENFORCE");

  const BinaryAuthorizationEvaluationMode3(this.value);
  final String value;

  static BinaryAuthorizationEvaluationMode3 fromValue(String value) {
    for (final item in BinaryAuthorizationEvaluationMode3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown BinaryAuthorizationEvaluationMode3 value: $value');
  }
}
