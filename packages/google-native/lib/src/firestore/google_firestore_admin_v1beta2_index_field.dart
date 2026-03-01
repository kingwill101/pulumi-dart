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

  /// Creates a new [GoogleFirestoreAdminV1beta2IndexField].
  /// [arrayConfig] Indicates that this field supports operations on `array_value`s.
  /// [fieldPath] Can be __name__. For single field indexes, this must match the name of the field or may be omitted.
  /// [order] Indicates that this field supports ordering by the specified order or comparing using =, <, <=, >, >=.
  GoogleFirestoreAdminV1beta2IndexField({
    this.arrayConfig,
    this.fieldPath,
    this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayConfig': ?arrayConfig == null ? null : arrayConfig!.value,
      'fieldPath': ?fieldPath,
      'order': ?order == null ? null : order!.value,
    };
  }

  factory GoogleFirestoreAdminV1beta2IndexField.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleFirestoreAdminV1beta2IndexField(
      arrayConfig: map['arrayConfig'] == null
          ? null
          : GoogleFirestoreAdminV1beta2IndexFieldArrayConfig.fromValue(
              map['arrayConfig'] as String,
            ),
      fieldPath: map['fieldPath'] == null ? null : map['fieldPath'] as String,
      order: map['order'] == null
          ? null
          : GoogleFirestoreAdminV1beta2IndexFieldOrder.fromValue(
              map['order'] as String,
            ),
    );
  }
}
