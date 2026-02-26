// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_dictionary.dart';
import 'google_privacy_dlp_v2_large_custom_dictionary_config.dart';
import 'google_privacy_dlp_v2_regex.dart';

/// Configuration for stored infoTypes. All fields and subfield are provided by the user. For more information, see https://cloud.google.com/dlp/docs/creating-custom-infotypes.
class GooglePrivacyDlpV2StoredInfoTypeConfig {
  /// Description of the StoredInfoType (max 256 characters).
  final String? description;

  /// Store dictionary-based CustomInfoType.
  final GooglePrivacyDlpV2Dictionary? dictionary;

  /// Display name of the StoredInfoType (max 256 characters).
  final String? displayName;

  /// StoredInfoType where findings are defined by a dictionary of phrases.
  final GooglePrivacyDlpV2LargeCustomDictionaryConfig? largeCustomDictionary;

  /// Store regular expression-based StoredInfoType.
  final GooglePrivacyDlpV2Regex? regex;

  GooglePrivacyDlpV2StoredInfoTypeConfig({
    this.description,
    this.dictionary,
    this.displayName,
    this.largeCustomDictionary,
    this.regex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final dictionaryValue = dictionary;
    if (dictionaryValue != null) {
      map['dictionary'] = dictionaryValue.toMap();
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final largeCustomDictionaryValue = largeCustomDictionary;
    if (largeCustomDictionaryValue != null) {
      map['largeCustomDictionary'] = largeCustomDictionaryValue.toMap();
    }
    final regexValue = regex;
    if (regexValue != null) {
      map['regex'] = regexValue.toMap();
    }
    return map;
  }

  factory GooglePrivacyDlpV2StoredInfoTypeConfig.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2StoredInfoTypeConfig(
      description:
          map['description'] == null ? null : map['description'] as String,
      dictionary: map['dictionary'] == null
          ? null
          : GooglePrivacyDlpV2Dictionary.fromMap(
              (map['dictionary'] as Map).cast<String, dynamic>()),
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      largeCustomDictionary: map['largeCustomDictionary'] == null
          ? null
          : GooglePrivacyDlpV2LargeCustomDictionaryConfig.fromMap(
              (map['largeCustomDictionary'] as Map).cast<String, dynamic>()),
      regex: map['regex'] == null
          ? null
          : GooglePrivacyDlpV2Regex.fromMap(
              (map['regex'] as Map).cast<String, dynamic>()),
    );
  }
}
