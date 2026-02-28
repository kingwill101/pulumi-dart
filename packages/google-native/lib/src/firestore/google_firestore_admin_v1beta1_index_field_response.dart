// ignore_for_file: unused_element, unnecessary_cast


/// A field of an index.
class GoogleFirestoreAdminV1beta1IndexFieldResponse {
  /// The path of the field. Must match the field path specification described by google.firestore.v1beta1.Document.fields. Special field path `__name__` may be used by itself or at the end of a path. `__type__` may be used only at the end of path.
  final String fieldPath;
  /// The field's mode.
  final String mode;

  /// Creates a new [GoogleFirestoreAdminV1beta1IndexFieldResponse].
  /// [fieldPath] The path of the field. Must match the field path specification described by google.firestore.v1beta1.Document.fields. Special field path `__name__` may be used by itself or at the end of a path. `__type__` may be used only at the end of path.
  /// [mode] The field's mode.
  GoogleFirestoreAdminV1beta1IndexFieldResponse({
    required this.fieldPath,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldPath': fieldPath,
      'mode': mode,
    };
  }

  factory GoogleFirestoreAdminV1beta1IndexFieldResponse.fromMap(Map<String, dynamic> map) {
    return GoogleFirestoreAdminV1beta1IndexFieldResponse(
      fieldPath: map['fieldPath'] as String,
      mode: map['mode'] as String,
    );
  }
}

