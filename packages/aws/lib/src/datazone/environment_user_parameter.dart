// ignore_for_file: unused_element, unnecessary_cast

class EnvironmentUserParameter {
  /// The name of an environment profile parameter.
  final String? name;

  /// The value of an environment profile parameter.
  final String? value;

  /// Creates a new [EnvironmentUserParameter].
  /// [name] The name of an environment profile parameter.
  /// [value] The value of an environment profile parameter.
  EnvironmentUserParameter({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory EnvironmentUserParameter.fromMap(Map<String, dynamic> map) {
    return EnvironmentUserParameter(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
