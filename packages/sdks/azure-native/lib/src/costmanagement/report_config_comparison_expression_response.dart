// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The comparison expression to be used in the report.
class ReportConfigComparisonExpressionResponse {
  /// The name of the column to use in comparison.
  final pulumi.Input<String> name;
  /// The operator to use for comparison.
  final pulumi.Input<String> operator;
  /// Array of values to use for comparison
  final pulumi.Input<List<String>> values;

  /// Creates a new [ReportConfigComparisonExpressionResponse].
  /// [name] The name of the column to use in comparison.
  /// [operator] The operator to use for comparison.
  /// [values] Array of values to use for comparison
  const ReportConfigComparisonExpressionResponse({
    required this.name,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'operator': operator,
      'values': values,
    };
  }

  factory ReportConfigComparisonExpressionResponse.fromMap(Map<String, dynamic> map) {
    return ReportConfigComparisonExpressionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
