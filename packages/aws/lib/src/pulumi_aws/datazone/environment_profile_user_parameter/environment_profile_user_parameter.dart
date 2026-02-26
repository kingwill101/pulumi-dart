// ignore_for_file: unused_element, unnecessary_cast

class EnvironmentProfileUserParameter {
  /// Name of the environment profile parameter.
  final String? name;

  /// Value of the environment profile parameter.
  final String? value;

  EnvironmentProfileUserParameter({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory EnvironmentProfileUserParameter.fromMap(Map<String, dynamic> map) {
    return EnvironmentProfileUserParameter(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
