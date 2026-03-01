// ignore_for_file: unused_element, unnecessary_cast


/// Dimension splitting and filtering definition
class DimensionResponse {
  /// Name of the dimension
  final String name;
  /// Operator for dimension values
  final String operator;
  /// List of dimension values
  final List<String> values;

  /// Creates a new [DimensionResponse].
  /// [name] Name of the dimension
  /// [operator] Operator for dimension values
  /// [values] List of dimension values
  DimensionResponse({
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
      name: map['name'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

