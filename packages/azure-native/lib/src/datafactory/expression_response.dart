// ignore_for_file: unused_element, unnecessary_cast


/// Azure Data Factory expression definition.
class ExpressionResponse {
  /// Expression type.
  final String type;
  /// Expression value.
  final String value;

  /// Creates a new [ExpressionResponse].
  /// [type] Expression type.
  /// [value] Expression value.
  ExpressionResponse({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory ExpressionResponse.fromMap(Map<String, dynamic> map) {
    return ExpressionResponse(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

