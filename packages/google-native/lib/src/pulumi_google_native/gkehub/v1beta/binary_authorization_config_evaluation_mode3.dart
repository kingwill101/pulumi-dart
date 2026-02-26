/// Optional. Mode of operation for binauthz policy evaluation.
enum BinaryAuthorizationConfigEvaluationMode3 {
  evaluationModeUnspecified("EVALUATION_MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  policyBindings("POLICY_BINDINGS");

  const BinaryAuthorizationConfigEvaluationMode3(this.value);
  final String value;

  static BinaryAuthorizationConfigEvaluationMode3 fromValue(String value) {
    for (final item in BinaryAuthorizationConfigEvaluationMode3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown BinaryAuthorizationConfigEvaluationMode3 value: $value');
  }
}
