// ignore_for_file: unused_element, unnecessary_cast

class ParameterGroupParameterRedshift {
  /// The name of the Redshift parameter.
  final String name;

  /// The value of the Redshift parameter.
  final String value;

  ParameterGroupParameterRedshift({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory ParameterGroupParameterRedshift.fromMap(Map<String, dynamic> map) {
    return ParameterGroupParameterRedshift(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
