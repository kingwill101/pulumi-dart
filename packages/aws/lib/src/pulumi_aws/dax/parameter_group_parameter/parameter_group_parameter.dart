// ignore_for_file: unused_element, unnecessary_cast

class ParameterGroupParameter {
  /// The name of the parameter.
  final String name;

  /// The value for the parameter.
  final String value;

  ParameterGroupParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory ParameterGroupParameter.fromMap(Map<String, dynamic> map) {
    return ParameterGroupParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
