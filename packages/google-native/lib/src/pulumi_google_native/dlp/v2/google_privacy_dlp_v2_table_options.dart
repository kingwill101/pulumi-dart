// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_privacy_dlp_v2_field_id.dart';

/// Instructions regarding the table content being inspected.
class GooglePrivacyDlpV2TableOptions {
  /// The columns that are the primary keys for table objects included in ContentItem. A copy of this cell's value will stored alongside alongside each finding so that the finding can be traced to the specific row it came from. No more than 3 may be provided.
  final List<GooglePrivacyDlpV2FieldId>? identifyingFields;

  GooglePrivacyDlpV2TableOptions({
    this.identifyingFields,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final identifyingFieldsValue = identifyingFields;
    if (identifyingFieldsValue != null) {
      map['identifyingFields'] =
          Input.encodeList<GooglePrivacyDlpV2FieldId, Map<String, dynamic>>(
              identifyingFieldsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GooglePrivacyDlpV2TableOptions.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2TableOptions(
      identifyingFields: map['identifyingFields'] == null
          ? null
          : Input.decodeList<GooglePrivacyDlpV2FieldId>(
              map['identifyingFields'],
              (value) => GooglePrivacyDlpV2FieldId.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
