// ignore_for_file: unused_element, unnecessary_cast

import 'tag_template_field_type_enum_type.dart';

class TagTemplateFieldType {
  /// Represents an enum type.
  /// Exactly one of `primitive_type` or `enum_type` must be set
  /// Structure is documented below.
  final TagTemplateFieldTypeEnumType? enumType;

  /// Represents primitive types - string, bool etc.
  /// Exactly one of `primitive_type` or `enum_type` must be set
  /// Possible values are: `DOUBLE`, `STRING`, `BOOL`, `TIMESTAMP`.
  final String? primitiveType;

  /// Creates a new [TagTemplateFieldType].
  /// [enumType] Represents an enum type.
  /// [primitiveType] Represents primitive types - string, bool etc.
  TagTemplateFieldType({this.enumType, this.primitiveType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumType': ?enumType == null ? null : enumType!.toMap(),
      'primitiveType': ?primitiveType,
    };
  }

  factory TagTemplateFieldType.fromMap(Map<String, dynamic> map) {
    return TagTemplateFieldType(
      enumType: map['enumType'] == null
          ? null
          : TagTemplateFieldTypeEnumType.fromMap(
              (map['enumType'] as Map).cast<String, dynamic>(),
            ),
      primitiveType: map['primitiveType'] == null
          ? null
          : map['primitiveType'] as String,
    );
  }
}
