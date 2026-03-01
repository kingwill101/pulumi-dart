// ignore_for_file: unused_element, unnecessary_cast


/// Specifies an auto scale rule metric dimension.
class ScaleRuleMetricDimension {
  /// Name of the dimension.
  final String dimensionName;
  /// the dimension operator. Only 'Equals' and 'NotEquals' are supported. 'Equals' being equal to any of the values. 'NotEquals' being not equal to all of the values
  final String operator;
  /// list of dimension values. For example: ["App1","App2"].
  final List<String> values;

  /// Creates a new [ScaleRuleMetricDimension].
  /// [dimensionName] Name of the dimension.
  /// [operator] the dimension operator. Only 'Equals' and 'NotEquals' are supported. 'Equals' being equal to any of the values. 'NotEquals' being not equal to all of the values
  /// [values] list of dimension values. For example: ["App1","App2"].
  ScaleRuleMetricDimension({
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

  factory ScaleRuleMetricDimension.fromMap(Map<String, dynamic> map) {
    return ScaleRuleMetricDimension(
      dimensionName: map['dimensionName'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

