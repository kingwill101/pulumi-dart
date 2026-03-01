// ignore_for_file: unused_element, unnecessary_cast


/// Specifies a metric dimension.
class MetricDimension {
  /// Name of the dimension.
  final String name;
  /// the dimension operator. Only 'Include' and 'Exclude' are supported
  final String operator;
  /// list of dimension values.
  final List<String> values;

  /// Creates a new [MetricDimension].
  /// [name] Name of the dimension.
  /// [operator] the dimension operator. Only 'Include' and 'Exclude' are supported
  /// [values] list of dimension values.
  MetricDimension({
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

  factory MetricDimension.fromMap(Map<String, dynamic> map) {
    return MetricDimension(
      name: map['name'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

