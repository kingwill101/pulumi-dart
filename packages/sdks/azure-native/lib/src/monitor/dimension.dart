// ignore_for_file: unused_element, unnecessary_cast


/// Dimension splitting and filtering definition
class Dimension {
  /// Name of the dimension
  final String name;
  /// Operator for dimension values
  final String operator;
  /// List of dimension values
  final List<String> values;

  /// Creates a new [Dimension].
  /// [name] Name of the dimension
  /// [operator] Operator for dimension values
  /// [values] List of dimension values
  Dimension({
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

  factory Dimension.fromMap(Map<String, dynamic> map) {
    return Dimension(
      name: map['name'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

