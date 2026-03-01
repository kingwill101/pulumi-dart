// ignore_for_file: unused_element, unnecessary_cast

class TagTemplateFieldTypeEnumTypeAllowedValue {
  /// The display name of the enum value.
  final String displayName;

  /// Creates a new [TagTemplateFieldTypeEnumTypeAllowedValue].
  /// [displayName] The display name of the enum value.
  TagTemplateFieldTypeEnumTypeAllowedValue({required this.displayName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'displayName': displayName};
  }

  factory TagTemplateFieldTypeEnumTypeAllowedValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return TagTemplateFieldTypeEnumTypeAllowedValue(
      displayName: map['displayName'] as String,
    );
  }
}
