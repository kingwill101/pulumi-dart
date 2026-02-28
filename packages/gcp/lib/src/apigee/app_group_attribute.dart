// ignore_for_file: unused_element, unnecessary_cast

class AppGroupAttribute {
  /// Key of the attribute
  final String? name;

  /// Value of the attribute
  final String? value;

  /// Creates a new [AppGroupAttribute].
  /// [name] Key of the attribute
  /// [value] Value of the attribute
  AppGroupAttribute({
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

  factory AppGroupAttribute.fromMap(Map<String, dynamic> map) {
    return AppGroupAttribute(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
