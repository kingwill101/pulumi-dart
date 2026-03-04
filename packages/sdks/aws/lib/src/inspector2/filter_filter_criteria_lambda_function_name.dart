// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FilterFilterCriteriaLambdaFunctionName {
  /// (Required) The comparison operator. Valid values: `EQUALS`.
  final pulumi.Input<String> comparison;

  /// (Required) The value to filter on.
  final pulumi.Input<String> value;

  /// Creates a new [FilterFilterCriteriaLambdaFunctionName].
  /// [comparison] (Required) The comparison operator. Valid values: `EQUALS`.
  /// [value] (Required) The value to filter on.
  FilterFilterCriteriaLambdaFunctionName({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory FilterFilterCriteriaLambdaFunctionName.fromMap(
    Map<String, dynamic> map,
  ) {
    return FilterFilterCriteriaLambdaFunctionName(
      comparison: pulumi.Input.fromValue(map['comparison'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
