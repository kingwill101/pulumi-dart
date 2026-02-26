// ignore_for_file: unused_element, unnecessary_cast

class GetPolicyDocumentStatementCondition {
  /// Name of the [IAM condition operator](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_condition_operators.html) to evaluate.
  final String test;

  /// Values to evaluate the condition against. If multiple values are provided, the condition matches if at least one of them applies. That is, AWS evaluates multiple values as though using an "OR" boolean operation.
  final List<String> values;

  /// Name of a [Context Variable](http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements.html#AvailableKeys) to apply the condition to. Context variables may either be standard AWS variables starting with `aws:` or service-specific variables prefixed with the service name.
  final String variable;

  GetPolicyDocumentStatementCondition({
    required this.test,
    required this.values,
    required this.variable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['test'] = test;
    map['values'] = values;
    map['variable'] = variable;
    return map;
  }

  factory GetPolicyDocumentStatementCondition.fromMap(
      Map<String, dynamic> map) {
    return GetPolicyDocumentStatementCondition(
      test: map['test'] as String,
      values: (map['values'] as List).cast<String>(),
      variable: map['variable'] as String,
    );
  }
}
