// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_field_id_response.dart';

/// An entity in a dataset is a field or set of fields that correspond to a single person. For example, in medical records the `EntityId` might be a patient identifier, or for financial records it might be an account identifier. This message is used when generalizations or analysis must take into account that multiple rows correspond to the same entity.
class GooglePrivacyDlpV2EntityIdResponse {
  /// Composite key indicating which field contains the entity identifier.
  final GooglePrivacyDlpV2FieldIdResponse field;

  /// Creates a new [GooglePrivacyDlpV2EntityIdResponse].
  /// [field] Composite key indicating which field contains the entity identifier.
  GooglePrivacyDlpV2EntityIdResponse({
    required this.field,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['field'] = field.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2EntityIdResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2EntityIdResponse(
      field: GooglePrivacyDlpV2FieldIdResponse.fromMap(
          (map['field'] as Map).cast<String, dynamic>()),
    );
  }
}
