// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_dictionary_response.dart';
import 'google_privacy_dlp_v2_large_custom_dictionary_config_response.dart';
import 'google_privacy_dlp_v2_regex_response.dart';

/// Configuration for stored infoTypes. All fields and subfield are provided by the user. For more information, see https://cloud.google.com/dlp/docs/creating-custom-infotypes.
class GooglePrivacyDlpV2StoredInfoTypeConfigResponse {
  /// Description of the StoredInfoType (max 256 characters).
  final String description;

  /// Store dictionary-based CustomInfoType.
  final GooglePrivacyDlpV2DictionaryResponse dictionary;

  /// Display name of the StoredInfoType (max 256 characters).
  final String displayName;

  /// StoredInfoType where findings are defined by a dictionary of phrases.
  final GooglePrivacyDlpV2LargeCustomDictionaryConfigResponse
      largeCustomDictionary;

  /// Store regular expression-based StoredInfoType.
  final GooglePrivacyDlpV2RegexResponse regex;

  /// Creates a new [GooglePrivacyDlpV2StoredInfoTypeConfigResponse].
  /// [description] Description of the StoredInfoType (max 256 characters).
  /// [dictionary] Store dictionary-based CustomInfoType.
  /// [displayName] Display name of the StoredInfoType (max 256 characters).
  /// [largeCustomDictionary] StoredInfoType where findings are defined by a dictionary of phrases.
  /// [regex] Store regular expression-based StoredInfoType.
  GooglePrivacyDlpV2StoredInfoTypeConfigResponse({
    required this.description,
    required this.dictionary,
    required this.displayName,
    required this.largeCustomDictionary,
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['dictionary'] = dictionary.toMap();
    map['displayName'] = displayName;
    map['largeCustomDictionary'] = largeCustomDictionary.toMap();
    map['regex'] = regex.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2StoredInfoTypeConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2StoredInfoTypeConfigResponse(
      description: map['description'] as String,
      dictionary: GooglePrivacyDlpV2DictionaryResponse.fromMap(
          (map['dictionary'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      largeCustomDictionary:
          GooglePrivacyDlpV2LargeCustomDictionaryConfigResponse.fromMap(
              (map['largeCustomDictionary'] as Map).cast<String, dynamic>()),
      regex: GooglePrivacyDlpV2RegexResponse.fromMap(
          (map['regex'] as Map).cast<String, dynamic>()),
    );
  }
}
