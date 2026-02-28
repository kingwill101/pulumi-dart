// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_field_id_response.dart';

/// Instructions regarding the table content being inspected.
class GooglePrivacyDlpV2TableOptionsResponse {
  /// The columns that are the primary keys for table objects included in ContentItem. A copy of this cell's value will stored alongside alongside each finding so that the finding can be traced to the specific row it came from. No more than 3 may be provided.
  final List<GooglePrivacyDlpV2FieldIdResponse> identifyingFields;

  /// Creates a new [GooglePrivacyDlpV2TableOptionsResponse].
  /// [identifyingFields] The columns that are the primary keys for table objects included in ContentItem. A copy of this cell's value will stored alongside alongside each finding so that the finding can be traced to the specific row it came from. No more than 3 may be provided.
  GooglePrivacyDlpV2TableOptionsResponse({
    required this.identifyingFields,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identifyingFields'] = pulumi.Input.encodeList<
        GooglePrivacyDlpV2FieldIdResponse,
        Map<String, dynamic>>(identifyingFields, (value) => value.toMap());
    return map;
  }

  factory GooglePrivacyDlpV2TableOptionsResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2TableOptionsResponse(
      identifyingFields:
          pulumi.Input.decodeList<GooglePrivacyDlpV2FieldIdResponse>(
              map['identifyingFields'],
              (value) => GooglePrivacyDlpV2FieldIdResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
