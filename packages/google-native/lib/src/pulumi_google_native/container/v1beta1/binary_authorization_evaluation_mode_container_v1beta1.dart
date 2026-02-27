/// Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED.
enum BinaryAuthorizationEvaluationModeContainerV1beta1 {
  evaluationModeUnspecified("EVALUATION_MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  projectSingletonPolicyEnforce("PROJECT_SINGLETON_POLICY_ENFORCE"),
  policyBindings("POLICY_BINDINGS"),
  policyBindingsAndProjectSingletonPolicyEnforce(
      "POLICY_BINDINGS_AND_PROJECT_SINGLETON_POLICY_ENFORCE");

  const BinaryAuthorizationEvaluationModeContainerV1beta1(this.value);
  final String value;

  static BinaryAuthorizationEvaluationModeContainerV1beta1 fromValue(
      String value) {
    for (final item
        in BinaryAuthorizationEvaluationModeContainerV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown BinaryAuthorizationEvaluationModeContainerV1beta1 value: $value');
  }
}
