// ignore_for_file: unused_element, unnecessary_cast

class GetParameterGroupParameter {
  /// Name of the parameter group.
  final String name;

  /// Value of the parameter.
  final String value;

  /// Creates a new [GetParameterGroupParameter].
  /// [name] Name of the parameter group.
  /// [value] Value of the parameter.
  GetParameterGroupParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GetParameterGroupParameter.fromMap(Map<String, dynamic> map) {
    return GetParameterGroupParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
