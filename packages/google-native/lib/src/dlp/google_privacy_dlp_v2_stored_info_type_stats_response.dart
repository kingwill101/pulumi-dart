// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_large_custom_dictionary_stats_response.dart';

/// Statistics for a StoredInfoType.
class GooglePrivacyDlpV2StoredInfoTypeStatsResponse {
  /// StoredInfoType where findings are defined by a dictionary of phrases.
  final GooglePrivacyDlpV2LargeCustomDictionaryStatsResponse
      largeCustomDictionary;

  /// Creates a new [GooglePrivacyDlpV2StoredInfoTypeStatsResponse].
  /// [largeCustomDictionary] StoredInfoType where findings are defined by a dictionary of phrases.
  GooglePrivacyDlpV2StoredInfoTypeStatsResponse({
    required this.largeCustomDictionary,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['largeCustomDictionary'] = largeCustomDictionary.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2StoredInfoTypeStatsResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2StoredInfoTypeStatsResponse(
      largeCustomDictionary:
          GooglePrivacyDlpV2LargeCustomDictionaryStatsResponse.fromMap(
              (map['largeCustomDictionary'] as Map).cast<String, dynamic>()),
    );
  }
}
