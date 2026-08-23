// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dimension splitting and filtering definition
class DimensionResponse {
  /// Name of the dimension
  final pulumi.Input<String> name;
  /// Operator for dimension values
  final pulumi.Input<String> operator;
  /// List of dimension values
  final pulumi.Input<List<String>> values;

  /// Creates a new [DimensionResponse].
  /// [name] Name of the dimension
  /// [operator] Operator for dimension values
  /// [values] List of dimension values
  const DimensionResponse({
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

  factory DimensionResponse.fromMap(Map<String, dynamic> map) {
    return DimensionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
