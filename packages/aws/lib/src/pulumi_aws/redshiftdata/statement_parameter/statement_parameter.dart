// ignore_for_file: unused_element, unnecessary_cast

class StatementParameter {
  final String name;
  final String value;

  StatementParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory StatementParameter.fromMap(Map<String, dynamic> map) {
    return StatementParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
