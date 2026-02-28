// ignore_for_file: unused_element, unnecessary_cast

import 'identifier_helper_field.dart';

/// Helps in identifying the underlying product. This should be treated like a one-of field. Only one field should be set in this proto. This is a workaround because spanner indexes on one-of fields restrict addition and deletion of fields.
class IdentifierHelper {
  /// The field that is set in the API proto.
  final IdentifierHelperField? field;

  /// Contains a URI which is vendor-specific. Example: The artifact repository URL of an image.
  final String? genericUri;

  /// Creates a new [IdentifierHelper].
  /// [field] The field that is set in the API proto.
  /// [genericUri] Contains a URI which is vendor-specific. Example: The artifact repository URL of an image.
  IdentifierHelper({
    this.field,
    this.genericUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldValue = field;
    if (fieldValue != null) {
      map['field'] = fieldValue.value;
    }
    final genericUriValue = genericUri;
    if (genericUriValue != null) {
      map['genericUri'] = genericUriValue;
    }
    return map;
  }

  factory IdentifierHelper.fromMap(Map<String, dynamic> map) {
    return IdentifierHelper(
      field: map['field'] == null
          ? null
          : IdentifierHelperField.fromValue(map['field'] as String),
      genericUri:
          map['genericUri'] == null ? null : map['genericUri'] as String,
    );
  }
}
