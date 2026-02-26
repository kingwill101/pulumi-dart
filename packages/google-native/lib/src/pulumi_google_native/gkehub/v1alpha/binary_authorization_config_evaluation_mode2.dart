/// Optional. Mode of operation for binauthz policy evaluation.
enum BinaryAuthorizationConfigEvaluationMode2 {
  evaluationModeUnspecified("EVALUATION_MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  policyBindings("POLICY_BINDINGS");

  const BinaryAuthorizationConfigEvaluationMode2(this.value);
  final String value;

  static BinaryAuthorizationConfigEvaluationMode2 fromValue(String value) {
    for (final item in BinaryAuthorizationConfigEvaluationMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown BinaryAuthorizationConfigEvaluationMode2 value: $value');
  }
}
