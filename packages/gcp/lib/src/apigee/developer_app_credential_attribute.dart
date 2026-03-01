// ignore_for_file: unused_element, unnecessary_cast

class DeveloperAppCredentialAttribute {
  /// Key of the attribute
  final String? name;

  /// Value of the attribute
  final String? value;

  /// Creates a new [DeveloperAppCredentialAttribute].
  /// [name] Key of the attribute
  /// [value] Value of the attribute
  DeveloperAppCredentialAttribute({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory DeveloperAppCredentialAttribute.fromMap(Map<String, dynamic> map) {
    return DeveloperAppCredentialAttribute(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
