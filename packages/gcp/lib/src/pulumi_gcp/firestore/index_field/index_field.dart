// ignore_for_file: unused_element, unnecessary_cast

import '../index_field_vector_config/index_field_vector_config.dart';

class IndexField {
  /// Indicates that this field supports operations on arrayValues. Only one of <span pulumi-lang-nodejs="`order`" pulumi-lang-dotnet="`Order`" pulumi-lang-go="`order`" pulumi-lang-python="`order`" pulumi-lang-yaml="`order`" pulumi-lang-java="`order`">`order`</span>, `arrayConfig`, and
  /// `vectorConfig` can be specified.
  /// Possible values are: `CONTAINS`.
  final String? arrayConfig;

  /// Name of the field.
  final String? fieldPath;

  /// Indicates that this field supports ordering by the specified order or comparing using =, <, <=, >, >=.
  /// Only one of <span pulumi-lang-nodejs="`order`" pulumi-lang-dotnet="`Order`" pulumi-lang-go="`order`" pulumi-lang-python="`order`" pulumi-lang-yaml="`order`" pulumi-lang-java="`order`">`order`</span>, `arrayConfig`, and `vectorConfig` can be specified.
  /// Possible values are: `ASCENDING`, `DESCENDING`.
  final String? order;

  /// Indicates that this field supports vector search operations. Only one of <span pulumi-lang-nodejs="`order`" pulumi-lang-dotnet="`Order`" pulumi-lang-go="`order`" pulumi-lang-python="`order`" pulumi-lang-yaml="`order`" pulumi-lang-java="`order`">`order`</span>, `arrayConfig`, and
  /// `vectorConfig` can be specified. Vector Fields should come after the field path `__name__`.
  /// Structure is documented below.
  final IndexFieldVectorConfig? vectorConfig;

  IndexField({
    this.arrayConfig,
    this.fieldPath,
    this.order,
    this.vectorConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arrayConfigValue = arrayConfig;
    if (arrayConfigValue != null) {
      map['arrayConfig'] = arrayConfigValue;
    }
    final fieldPathValue = fieldPath;
    if (fieldPathValue != null) {
      map['fieldPath'] = fieldPathValue;
    }
    final orderValue = order;
    if (orderValue != null) {
      map['order'] = orderValue;
    }
    final vectorConfigValue = vectorConfig;
    if (vectorConfigValue != null) {
      map['vectorConfig'] = vectorConfigValue.toMap();
    }
    return map;
  }

  factory IndexField.fromMap(Map<String, dynamic> map) {
    return IndexField(
      arrayConfig:
          map['arrayConfig'] == null ? null : map['arrayConfig'] as String,
      fieldPath: map['fieldPath'] == null ? null : map['fieldPath'] as String,
      order: map['order'] == null ? null : map['order'] as String,
      vectorConfig: map['vectorConfig'] == null
          ? null
          : IndexFieldVectorConfig.fromMap(
              (map['vectorConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
