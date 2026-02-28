// ignore_for_file: unused_element, unnecessary_cast

class ParameterGroupParameter {
  /// The name of the ElastiCache parameter.
  final String name;

  /// The value of the ElastiCache parameter.
  final String value;

  /// Creates a new [ParameterGroupParameter].
  /// [name] The name of the ElastiCache parameter.
  /// [value] The value of the ElastiCache parameter.
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
