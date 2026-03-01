// ignore_for_file: unused_element, unnecessary_cast


class StatementParameter {
  final String name;
  final String value;

  /// Creates a new [StatementParameter].
  /// [name] Required.
  /// [value] Required.
  StatementParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory StatementParameter.fromMap(Map<String, dynamic> map) {
    return StatementParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

