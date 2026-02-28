// ignore_for_file: unused_element, unnecessary_cast

class FilterFilterCriteriaLambdaFunctionExecutionRoleArn {
  /// (Required) The comparison operator. Valid values: `EQUALS`.
  final String comparison;

  /// (Required) The value to filter on.
  final String value;

  /// Creates a new [FilterFilterCriteriaLambdaFunctionExecutionRoleArn].
  /// [comparison] (Required) The comparison operator. Valid values: `EQUALS`.
  /// [value] (Required) The value to filter on.
  FilterFilterCriteriaLambdaFunctionExecutionRoleArn({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory FilterFilterCriteriaLambdaFunctionExecutionRoleArn.fromMap(
      Map<String, dynamic> map) {
    return FilterFilterCriteriaLambdaFunctionExecutionRoleArn(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}
