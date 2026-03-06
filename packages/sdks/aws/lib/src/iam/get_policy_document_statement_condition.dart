// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPolicyDocumentStatementCondition {
  /// Name of the [IAM condition operator](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_condition_operators.html) to evaluate.
  final pulumi.Input<String> test;
  /// Values to evaluate the condition against. If multiple values are provided, the condition matches if at least one of them applies. That is, AWS evaluates multiple values as though using an "OR" boolean operation.
  final pulumi.Input<List<String>> values;
  /// Name of a [Context Variable](http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements.html#AvailableKeys) to apply the condition to. Context variables may either be standard AWS variables starting with `aws:` or service-specific variables prefixed with the service name.
  final pulumi.Input<String> variable;

  /// Creates a new [GetPolicyDocumentStatementCondition].
  /// [test] Name of the [IAM condition operator](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_condition_operators.html) to evaluate.
  /// [values] Values to evaluate the condition against. If multiple values are provided, the condition matches if at least one of them applies. That is, AWS evaluates multiple values as though using an "OR" boolean operation.
  /// [variable] Name of a [Context Variable](http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements.html#AvailableKeys) to apply the condition to. Context variables may either be standard AWS variables starting with `aws:` or service-specific variables prefixed with the service name.
  const GetPolicyDocumentStatementCondition({
    required this.test,
    required this.values,
    required this.variable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'test': test,
      'values': values,
      'variable': variable,
    };
  }

  factory GetPolicyDocumentStatementCondition.fromMap(Map<String, dynamic> map) {
    return GetPolicyDocumentStatementCondition(
      test: pulumi.Input.fromValue(map['test'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
      variable: pulumi.Input.fromValue(map['variable'] as String),
    );
  }
}

