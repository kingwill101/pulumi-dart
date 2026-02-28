// ignore_for_file: unused_element, unnecessary_cast

import 'index_field_vector_config.dart';

class IndexField {
  /// Indicates that this field supports operations on arrayValues. Only one of `order`, `arrayConfig`, and
  /// `vectorConfig` can be specified.
  /// Possible values are: `CONTAINS`.
  final String? arrayConfig;
  /// Name of the field.
  final String? fieldPath;
  /// Indicates that this field supports ordering by the specified order or comparing using =, <, <=, >, >=.
  /// Only one of `order`, `arrayConfig`, and `vectorConfig` can be specified.
  /// Possible values are: `ASCENDING`, `DESCENDING`.
  final String? order;
  /// Indicates that this field supports vector search operations. Only one of `order`, `arrayConfig`, and
  /// `vectorConfig` can be specified. Vector Fields should come after the field path `__name__`.
  /// Structure is documented below.
  final IndexFieldVectorConfig? vectorConfig;

  /// Creates a new [IndexField].
  /// [arrayConfig] Indicates that this field supports operations on arrayValues. Only one of `order`, `arrayConfig`, and
  /// [fieldPath] Name of the field.
  /// [order] Indicates that this field supports ordering by the specified order or comparing using =, <, <=, >, >=.
  /// [vectorConfig] Indicates that this field supports vector search operations. Only one of `order`, `arrayConfig`, and
  IndexField({
    this.arrayConfig,
    this.fieldPath,
    this.order,
    this.vectorConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayConfig': ?arrayConfig,
      'fieldPath': ?fieldPath,
      'order': ?order,
      'vectorConfig': ?vectorConfig == null ? null : vectorConfig!.toMap(),
    };
  }

  factory IndexField.fromMap(Map<String, dynamic> map) {
    return IndexField(
      arrayConfig: map['arrayConfig'] == null ? null : map['arrayConfig'] as String,
      fieldPath: map['fieldPath'] == null ? null : map['fieldPath'] as String,
      order: map['order'] == null ? null : map['order'] as String,
      vectorConfig: map['vectorConfig'] == null ? null : IndexFieldVectorConfig.fromMap((map['vectorConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

