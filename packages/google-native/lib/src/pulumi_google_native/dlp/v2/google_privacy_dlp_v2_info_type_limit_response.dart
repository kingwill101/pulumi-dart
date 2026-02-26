// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_info_type_response.dart';

/// Max findings configuration per infoType, per content item or long running DlpJob.
class GooglePrivacyDlpV2InfoTypeLimitResponse {
  /// Type of information the findings limit applies to. Only one limit per info_type should be provided. If InfoTypeLimit does not have an info_type, the DLP API applies the limit against all info_types that are found but not specified in another InfoTypeLimit.
  final GooglePrivacyDlpV2InfoTypeResponse infoType;

  /// Max findings limit for the given infoType.
  final int maxFindings;

  GooglePrivacyDlpV2InfoTypeLimitResponse({
    required this.infoType,
    required this.maxFindings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['infoType'] = infoType.toMap();
    map['maxFindings'] = maxFindings;
    return map;
  }

  factory GooglePrivacyDlpV2InfoTypeLimitResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InfoTypeLimitResponse(
      infoType: GooglePrivacyDlpV2InfoTypeResponse.fromMap(
          (map['infoType'] as Map).cast<String, dynamic>()),
      maxFindings: map['maxFindings'] as int,
    );
  }
}
