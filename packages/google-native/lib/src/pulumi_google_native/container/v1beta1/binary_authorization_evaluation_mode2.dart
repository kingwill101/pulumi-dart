/// Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
enum BinaryAuthorizationEvaluationMode2 {
  evaluationModeUnspecified("EVALUATION_MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  projectSingletonPolicyEnforce("PROJECT_SINGLETON_POLICY_ENFORCE"),
  policyBindings("POLICY_BINDINGS"),
  policyBindingsAndProjectSingletonPolicyEnforce(
      "POLICY_BINDINGS_AND_PROJECT_SINGLETON_POLICY_ENFORCE");

  const BinaryAuthorizationEvaluationMode2(this.value);
  final String value;

  static BinaryAuthorizationEvaluationMode2 fromValue(String value) {
    for (final item in BinaryAuthorizationEvaluationMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown BinaryAuthorizationEvaluationMode2 value: $value');
  }
}
