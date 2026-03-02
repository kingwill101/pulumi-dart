// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dimension splitting and filtering definition
class Dimension {
  /// Name of the dimension
  final pulumi.Input<String> name;
  /// Operator for dimension values
  final pulumi.Input<String> operator;
  /// List of dimension values
  final pulumi.Input<List<String>> values;

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
      name: (map['name'] as String).input(),
      operator: (map['operator'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

