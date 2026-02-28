// ignore_for_file: unused_element, unnecessary_cast

import 'google_firestore_admin_v1_index_field_array_config.dart';
import 'google_firestore_admin_v1_index_field_order.dart';
import 'google_firestore_admin_v1_vector_config.dart';

/// A field in an index. The field_path describes which field is indexed, the value_mode describes how the field value is indexed.
class GoogleFirestoreAdminV1IndexField {
  /// Indicates that this field supports operations on `array_value`s.
  final GoogleFirestoreAdminV1IndexFieldArrayConfig? arrayConfig;

  /// Can be __name__. For single field indexes, this must match the name of the field or may be omitted.
  final String? fieldPath;

  /// Indicates that this field supports ordering by the specified order or comparing using =, !=, <, <=, >, >=.
  final GoogleFirestoreAdminV1IndexFieldOrder? order;

  /// Indicates that this field supports nearest neighbors and distance operations on vector.
  final GoogleFirestoreAdminV1VectorConfig? vectorConfig;

  /// Creates a new [GoogleFirestoreAdminV1IndexField].
  /// [arrayConfig] Indicates that this field supports operations on `array_value`s.
  /// [fieldPath] Can be __name__. For single field indexes, this must match the name of the field or may be omitted.
  /// [order] Indicates that this field supports ordering by the specified order or comparing using =, !=, <, <=, >, >=.
  /// [vectorConfig] Indicates that this field supports nearest neighbors and distance operations on vector.
  GoogleFirestoreAdminV1IndexField({
    this.arrayConfig,
    this.fieldPath,
    this.order,
    this.vectorConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arrayConfigValue = arrayConfig;
    if (arrayConfigValue != null) {
      map['arrayConfig'] = arrayConfigValue.value;
    }
    final fieldPathValue = fieldPath;
    if (fieldPathValue != null) {
      map['fieldPath'] = fieldPathValue;
    }
    final orderValue = order;
    if (orderValue != null) {
      map['order'] = orderValue.value;
    }
    final vectorConfigValue = vectorConfig;
    if (vectorConfigValue != null) {
      map['vectorConfig'] = vectorConfigValue.toMap();
    }
    return map;
  }

  factory GoogleFirestoreAdminV1IndexField.fromMap(Map<String, dynamic> map) {
    return GoogleFirestoreAdminV1IndexField(
      arrayConfig: map['arrayConfig'] == null
          ? null
          : GoogleFirestoreAdminV1IndexFieldArrayConfig.fromValue(
              map['arrayConfig'] as String),
      fieldPath: map['fieldPath'] == null ? null : map['fieldPath'] as String,
      order: map['order'] == null
          ? null
          : GoogleFirestoreAdminV1IndexFieldOrder.fromValue(
              map['order'] as String),
      vectorConfig: map['vectorConfig'] == null
          ? null
          : GoogleFirestoreAdminV1VectorConfig.fromMap(
              (map['vectorConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
