// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies a metric dimension.
class MetricDimensionResponse {
  /// Name of the dimension.
  final pulumi.Input<String> name;
  /// the dimension operator. Only 'Include' and 'Exclude' are supported
  final pulumi.Input<String> operator;
  /// list of dimension values.
  final pulumi.Input<List<String>> values;

  /// Creates a new [MetricDimensionResponse].
  /// [name] Name of the dimension.
  /// [operator] the dimension operator. Only 'Include' and 'Exclude' are supported
  /// [values] list of dimension values.
  MetricDimensionResponse({
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

  factory MetricDimensionResponse.fromMap(Map<String, dynamic> map) {
    return MetricDimensionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

