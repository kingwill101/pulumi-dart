// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies an auto scale rule metric dimension.
class ScaleRuleMetricDimensionResponse {
  /// Name of the dimension.
  final pulumi.Input<String> dimensionName;

  /// the dimension operator. Only 'Equals' and 'NotEquals' are supported. 'Equals' being equal to any of the values. 'NotEquals' being not equal to all of the values
  final pulumi.Input<String> operator;

  /// list of dimension values. For example: ["App1","App2"].
  final pulumi.Input<List<String>> values;

  /// Creates a new [ScaleRuleMetricDimensionResponse].
  /// [dimensionName] Name of the dimension.
  /// [operator] the dimension operator. Only 'Equals' and 'NotEquals' are supported. 'Equals' being equal to any of the values. 'NotEquals' being not equal to all of the values
  /// [values] list of dimension values. For example: ["App1","App2"].
  ScaleRuleMetricDimensionResponse({
    required this.dimensionName,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensionName': dimensionName,
      'operator': operator,
      'values': values,
    };
  }

  factory ScaleRuleMetricDimensionResponse.fromMap(Map<String, dynamic> map) {
    return ScaleRuleMetricDimensionResponse(
      dimensionName: pulumi.Input.fromValue(map['dimensionName'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
