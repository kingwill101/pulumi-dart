// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BudgetFilterExpressionAndNotDimensions {
  /// (Optional) The cost category key to filter on.
  final pulumi.Input<String> key;
  /// (Optional) The match options for the cost category filter. Valid values are `EQUALS`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `GREATER_THAN_OR_EQUAL`, `CASE_SENSITIVE`, `CASE_INSENSITIVE`. Note: `ABSENT` is not supported due to AWS API contradictions (it requires values to be absent but also cannot have values set).
  final pulumi.Input<List<String>>? matchOptions;
  /// (Optional) A list of cost category values to match. At least one value is required.
  final pulumi.Input<List<String>> values;

  /// Creates a new [BudgetFilterExpressionAndNotDimensions].
  /// [key] (Optional) The cost category key to filter on.
  /// [matchOptions] (Optional) The match options for the cost category filter. Valid values are `EQUALS`, `STARTS_WITH`, `ENDS_WITH`, `CONTAINS`, `GREATER_THAN_OR_EQUAL`, `CASE_SENSITIVE`, `CASE_INSENSITIVE`. Note: `ABSENT` is not supported due to AWS API contradictions (it requires values to be absent but also cannot have values set).
  /// [values] (Optional) A list of cost category values to match. At least one value is required.
  BudgetFilterExpressionAndNotDimensions({
    required this.key,
    this.matchOptions,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'matchOptions': ?matchOptions,
      'values': values,
    };
  }

  factory BudgetFilterExpressionAndNotDimensions.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionAndNotDimensions(
      key: (map['key'] as String).input(),
      matchOptions: map['matchOptions'] == null ? null : (((map['matchOptions'] as List).cast<String>()).input()).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

