// ignore_for_file: unused_element, unnecessary_cast

class EnvironmentPropertiesProperty {
  /// The property key.
  final String? name;

  /// The property value.
  final String? value;

  /// Creates a new [EnvironmentPropertiesProperty].
  /// [name] The property key.
  /// [value] The property value.
  EnvironmentPropertiesProperty({
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

  factory EnvironmentPropertiesProperty.fromMap(Map<String, dynamic> map) {
    return EnvironmentPropertiesProperty(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
