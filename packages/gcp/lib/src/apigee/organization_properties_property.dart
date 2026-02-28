// ignore_for_file: unused_element, unnecessary_cast

class OrganizationPropertiesProperty {
  /// Name of the property.
  final String? name;

  /// Value of the property.
  final String? value;

  /// Creates a new [OrganizationPropertiesProperty].
  /// [name] Name of the property.
  /// [value] Value of the property.
  OrganizationPropertiesProperty({
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

  factory OrganizationPropertiesProperty.fromMap(Map<String, dynamic> map) {
    return OrganizationPropertiesProperty(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
