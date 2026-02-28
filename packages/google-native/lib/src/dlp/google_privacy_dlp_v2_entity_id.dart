// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_field_id.dart';

/// An entity in a dataset is a field or set of fields that correspond to a single person. For example, in medical records the `EntityId` might be a patient identifier, or for financial records it might be an account identifier. This message is used when generalizations or analysis must take into account that multiple rows correspond to the same entity.
class GooglePrivacyDlpV2EntityId {
  /// Composite key indicating which field contains the entity identifier.
  final GooglePrivacyDlpV2FieldId? field;

  /// Creates a new [GooglePrivacyDlpV2EntityId].
  /// [field] Composite key indicating which field contains the entity identifier.
  GooglePrivacyDlpV2EntityId({
    this.field,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldValue = field;
    if (fieldValue != null) {
      map['field'] = fieldValue.toMap();
    }
    return map;
  }

  factory GooglePrivacyDlpV2EntityId.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2EntityId(
      field: map['field'] == null
          ? null
          : GooglePrivacyDlpV2FieldId.fromMap(
              (map['field'] as Map).cast<String, dynamic>()),
    );
  }
}
