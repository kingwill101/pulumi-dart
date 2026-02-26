// ignore_for_file: unused_element, unnecessary_cast

class ParameterGroupParameter2 {
  /// The name of the ElastiCache parameter.
  final String name;

  /// The value of the ElastiCache parameter.
  final String value;

  ParameterGroupParameter2({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory ParameterGroupParameter2.fromMap(Map<String, dynamic> map) {
    return ParameterGroupParameter2(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
