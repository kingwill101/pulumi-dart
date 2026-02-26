// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_info_type_response.dart';

/// Statistics regarding a specific InfoType.
class GooglePrivacyDlpV2InfoTypeStatsResponse {
  /// Number of findings for this infoType.
  final String count;

  /// The type of finding this stat is for.
  final GooglePrivacyDlpV2InfoTypeResponse infoType;

  GooglePrivacyDlpV2InfoTypeStatsResponse({
    required this.count,
    required this.infoType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['infoType'] = infoType.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2InfoTypeStatsResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InfoTypeStatsResponse(
      count: map['count'] as String,
      infoType: GooglePrivacyDlpV2InfoTypeResponse.fromMap(
          (map['infoType'] as Map).cast<String, dynamic>()),
    );
  }
}
