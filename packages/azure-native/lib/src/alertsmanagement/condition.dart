// ignore_for_file: unused_element, unnecessary_cast


/// Condition to trigger an alert processing rule.
class Condition {
  /// Field for a given condition.
  final String? field;
  /// Operator for a given condition.
  final String? operator;
  /// List of values to match for a given condition.
  final List<String>? values;

  /// Creates a new [Condition].
  /// [field] Field for a given condition.
  /// [operator] Operator for a given condition.
  /// [values] List of values to match for a given condition.
  Condition({
    this.field,
    this.operator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
      'operator': ?operator,
      'values': ?values,
    };
  }

  factory Condition.fromMap(Map<String, dynamic> map) {
    return Condition(
      field: map['field'] == null ? null : map['field'] as String,
      operator: map['operator'] == null ? null : map['operator'] as String,
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

