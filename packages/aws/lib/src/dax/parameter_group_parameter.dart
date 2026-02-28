// ignore_for_file: unused_element, unnecessary_cast


class ParameterGroupParameter {
  /// The name of the parameter.
  final String name;
  /// The value for the parameter.
  final String value;

  /// Creates a new [ParameterGroupParameter].
  /// [name] The name of the parameter.
  /// [value] The value for the parameter.
  ParameterGroupParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory ParameterGroupParameter.fromMap(Map<String, dynamic> map) {
    return ParameterGroupParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

