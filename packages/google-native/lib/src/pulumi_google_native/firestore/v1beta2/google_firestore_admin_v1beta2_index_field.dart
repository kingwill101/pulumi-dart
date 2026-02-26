// ignore_for_file: unused_element, unnecessary_cast

import 'google_firestore_admin_v1beta2_index_field_array_config.dart';
import 'google_firestore_admin_v1beta2_index_field_order.dart';

/// A field in an index. The field_path describes which field is indexed, the value_mode describes how the field value is indexed.
class GoogleFirestoreAdminV1beta2IndexField {
  /// Indicates that this field supports operations on `array_value`s.
  final GoogleFirestoreAdminV1beta2IndexFieldArrayConfig? arrayConfig;

  /// Can be __name__. For single field indexes, this must match the name of the field or may be omitted.
  final String? fieldPath;

  /// Indicates that this field supports ordering by the specified order or comparing using =, <, <=, >, >=.
  final GoogleFirestoreAdminV1beta2IndexFieldOrder? order;

  GoogleFirestoreAdminV1beta2IndexField({
    this.arrayConfig,
    this.fieldPath,
    this.order,
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
    return map;
  }

  factory GoogleFirestoreAdminV1beta2IndexField.fromMap(
      Map<String, dynamic> map) {
    return GoogleFirestoreAdminV1beta2IndexField(
      arrayConfig: map['arrayConfig'] == null
          ? null
          : GoogleFirestoreAdminV1beta2IndexFieldArrayConfig.fromValue(
              map['arrayConfig'] as String),
      fieldPath: map['fieldPath'] == null ? null : map['fieldPath'] as String,
      order: map['order'] == null
          ? null
          : GoogleFirestoreAdminV1beta2IndexFieldOrder.fromValue(
              map['order'] as String),
    );
  }
}
