// ignore_for_file: unused_element, unnecessary_cast


/// Azure Data Factory expression definition.
class Expression {
  /// Expression type.
  final String type;
  /// Expression value.
  final String value;

  /// Creates a new [Expression].
  /// [type] Expression type.
  /// [value] Expression value.
  Expression({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory Expression.fromMap(Map<String, dynamic> map) {
    return Expression(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

