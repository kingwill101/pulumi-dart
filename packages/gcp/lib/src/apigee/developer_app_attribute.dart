// ignore_for_file: unused_element, unnecessary_cast

class DeveloperAppAttribute {
  /// Key of the attribute
  final String? name;

  /// Value of the attribute
  final String? value;

  /// Creates a new [DeveloperAppAttribute].
  /// [name] Key of the attribute
  /// [value] Value of the attribute
  DeveloperAppAttribute({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory DeveloperAppAttribute.fromMap(Map<String, dynamic> map) {
    return DeveloperAppAttribute(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
