// ignore_for_file: unused_element, unnecessary_cast

import '../tag_template_field_type_enum_type/tag_template_field_type_enum_type.dart';

class TagTemplateFieldType {
  /// Represents an enum type.
  /// Exactly one of <span pulumi-lang-nodejs="`primitiveType`" pulumi-lang-dotnet="`PrimitiveType`" pulumi-lang-go="`primitiveType`" pulumi-lang-python="`primitive_type`" pulumi-lang-yaml="`primitiveType`" pulumi-lang-java="`primitiveType`">`primitive_type`</span> or <span pulumi-lang-nodejs="`enumType`" pulumi-lang-dotnet="`EnumType`" pulumi-lang-go="`enumType`" pulumi-lang-python="`enum_type`" pulumi-lang-yaml="`enumType`" pulumi-lang-java="`enumType`">`enum_type`</span> must be set
  /// Structure is documented below.
  final TagTemplateFieldTypeEnumType? enumType;

  /// Represents primitive types - string, bool etc.
  /// Exactly one of <span pulumi-lang-nodejs="`primitiveType`" pulumi-lang-dotnet="`PrimitiveType`" pulumi-lang-go="`primitiveType`" pulumi-lang-python="`primitive_type`" pulumi-lang-yaml="`primitiveType`" pulumi-lang-java="`primitiveType`">`primitive_type`</span> or <span pulumi-lang-nodejs="`enumType`" pulumi-lang-dotnet="`EnumType`" pulumi-lang-go="`enumType`" pulumi-lang-python="`enum_type`" pulumi-lang-yaml="`enumType`" pulumi-lang-java="`enumType`">`enum_type`</span> must be set
  /// Possible values are: `DOUBLE`, `STRING`, `BOOL`, `TIMESTAMP`.
  final String? primitiveType;

  TagTemplateFieldType({
    this.enumType,
    this.primitiveType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enumTypeValue = enumType;
    if (enumTypeValue != null) {
      map['enumType'] = enumTypeValue.toMap();
    }
    final primitiveTypeValue = primitiveType;
    if (primitiveTypeValue != null) {
      map['primitiveType'] = primitiveTypeValue;
    }
    return map;
  }

  factory TagTemplateFieldType.fromMap(Map<String, dynamic> map) {
    return TagTemplateFieldType(
      enumType: map['enumType'] == null
          ? null
          : TagTemplateFieldTypeEnumType.fromMap(
              (map['enumType'] as Map).cast<String, dynamic>()),
      primitiveType:
          map['primitiveType'] == null ? null : map['primitiveType'] as String,
    );
  }
}
