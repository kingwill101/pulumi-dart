// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPolicyDocumentStatementCondition {
  /// The operator of the condition.
  final pulumi.Input<String> operator;
  /// The values of the condition.
  final pulumi.Input<List<String>> values;
  /// The variable of the condition.
  final pulumi.Input<String> variable;

  /// Creates a new [GetPolicyDocumentStatementCondition].
  /// [operator] The operator of the condition.
  /// [values] The values of the condition.
  /// [variable] The variable of the condition.
  GetPolicyDocumentStatementCondition({
    required this.operator,
    required this.values,
    required this.variable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'values': values,
      'variable': variable,
    };
  }

  factory GetPolicyDocumentStatementCondition.fromMap(Map<String, dynamic> map) {
    return GetPolicyDocumentStatementCondition(
      operator: (map['operator'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
      variable: (map['variable'] as String).input(),
    );
  }
}

