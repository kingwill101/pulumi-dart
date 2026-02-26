// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_chars_to_ignore_common_characters_to_ignore.dart';

/// Characters to skip when doing deidentification of a value. These will be left alone and skipped.
class GooglePrivacyDlpV2CharsToIgnore {
  /// Characters to not transform when masking.
  final String? charactersToSkip;

  /// Common characters to not transform when masking. Useful to avoid removing punctuation.
  final GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore?
      commonCharactersToIgnore;

  GooglePrivacyDlpV2CharsToIgnore({
    this.charactersToSkip,
    this.commonCharactersToIgnore,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final charactersToSkipValue = charactersToSkip;
    if (charactersToSkipValue != null) {
      map['charactersToSkip'] = charactersToSkipValue;
    }
    final commonCharactersToIgnoreValue = commonCharactersToIgnore;
    if (commonCharactersToIgnoreValue != null) {
      map['commonCharactersToIgnore'] = commonCharactersToIgnoreValue.value;
    }
    return map;
  }

  factory GooglePrivacyDlpV2CharsToIgnore.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CharsToIgnore(
      charactersToSkip: map['charactersToSkip'] == null
          ? null
          : map['charactersToSkip'] as String,
      commonCharactersToIgnore: map['commonCharactersToIgnore'] == null
          ? null
          : GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore.fromValue(
              map['commonCharactersToIgnore'] as String),
    );
  }
}
