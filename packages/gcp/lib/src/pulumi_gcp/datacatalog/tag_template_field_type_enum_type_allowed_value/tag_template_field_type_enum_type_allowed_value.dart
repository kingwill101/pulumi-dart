// ignore_for_file: unused_element, unnecessary_cast

class TagTemplateFieldTypeEnumTypeAllowedValue {
  /// The display name of the enum value.
  final String displayName;

  TagTemplateFieldTypeEnumTypeAllowedValue({
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    return map;
  }

  factory TagTemplateFieldTypeEnumTypeAllowedValue.fromMap(
      Map<String, dynamic> map) {
    return TagTemplateFieldTypeEnumTypeAllowedValue(
      displayName: map['displayName'] as String,
    );
  }
}
