// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_privacy_dlp_v2_field_id_response.dart';

/// l-diversity metric, used for analysis of reidentification risk.
class GooglePrivacyDlpV2LDiversityConfigResponse {
  /// Set of quasi-identifiers indicating how equivalence classes are defined for the l-diversity computation. When multiple fields are specified, they are considered a single composite key.
  final List<GooglePrivacyDlpV2FieldIdResponse> quasiIds;

  /// Sensitive field for computing the l-value.
  final GooglePrivacyDlpV2FieldIdResponse sensitiveAttribute;

  GooglePrivacyDlpV2LDiversityConfigResponse({
    required this.quasiIds,
    required this.sensitiveAttribute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['quasiIds'] = Input.encodeList<GooglePrivacyDlpV2FieldIdResponse,
        Map<String, dynamic>>(quasiIds, (value) => value.toMap());
    map['sensitiveAttribute'] = sensitiveAttribute.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2LDiversityConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2LDiversityConfigResponse(
      quasiIds: Input.decodeList<GooglePrivacyDlpV2FieldIdResponse>(
          map['quasiIds'],
          (value) => GooglePrivacyDlpV2FieldIdResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      sensitiveAttribute: GooglePrivacyDlpV2FieldIdResponse.fromMap(
          (map['sensitiveAttribute'] as Map).cast<String, dynamic>()),
    );
  }
}
