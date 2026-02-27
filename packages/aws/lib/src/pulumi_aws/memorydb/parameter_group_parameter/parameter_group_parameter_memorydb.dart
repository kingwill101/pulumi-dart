// ignore_for_file: unused_element, unnecessary_cast

class ParameterGroupParameterMemorydb {
  /// The name of the parameter.
  final String name;

  /// The value of the parameter.
  final String value;

  ParameterGroupParameterMemorydb({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory ParameterGroupParameterMemorydb.fromMap(Map<String, dynamic> map) {
    return ParameterGroupParameterMemorydb(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
