// ignore_for_file: unused_element, unnecessary_cast

/// A field in an index. The field_path describes which field is indexed, the value_mode describes how the field value is indexed.
class GoogleFirestoreAdminV1beta2IndexFieldResponse {
  /// Indicates that this field supports operations on `array_value`s.
  final String arrayConfig;

  /// Can be __name__. For single field indexes, this must match the name of the field or may be omitted.
  final String fieldPath;

  /// Indicates that this field supports ordering by the specified order or comparing using =, <, <=, >, >=.
  final String order;

  GoogleFirestoreAdminV1beta2IndexFieldResponse({
    required this.arrayConfig,
    required this.fieldPath,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arrayConfig'] = arrayConfig;
    map['fieldPath'] = fieldPath;
    map['order'] = order;
    return map;
  }

  factory GoogleFirestoreAdminV1beta2IndexFieldResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleFirestoreAdminV1beta2IndexFieldResponse(
      arrayConfig: map['arrayConfig'] as String,
      fieldPath: map['fieldPath'] as String,
      order: map['order'] as String,
    );
  }
}
