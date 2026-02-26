// ignore_for_file: unused_element, unnecessary_cast

class ParameterGroupParameter6 {
  /// The name of the Redshift parameter.
  final String name;

  /// The value of the Redshift parameter.
  final String value;

  ParameterGroupParameter6({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory ParameterGroupParameter6.fromMap(Map<String, dynamic> map) {
    return ParameterGroupParameter6(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
