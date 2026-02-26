// ignore_for_file: unused_element, unnecessary_cast

class DeveloperAppCredentialAttribute {
  /// Key of the attribute
  final String? name;

  /// Value of the attribute
  final String? value;

  DeveloperAppCredentialAttribute({
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

  factory DeveloperAppCredentialAttribute.fromMap(Map<String, dynamic> map) {
    return DeveloperAppCredentialAttribute(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
