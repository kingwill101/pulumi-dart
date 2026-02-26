// ignore_for_file: unused_element, unnecessary_cast

class ParameterGroupParameter3 {
  /// The name of the parameter.
  final String name;

  /// The value of the parameter.
  final String value;

  ParameterGroupParameter3({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory ParameterGroupParameter3.fromMap(Map<String, dynamic> map) {
    return ParameterGroupParameter3(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
