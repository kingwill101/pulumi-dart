// ignore_for_file: unused_element, unnecessary_cast

/// Characters to skip when doing deidentification of a value. These will be left alone and skipped.
class GooglePrivacyDlpV2CharsToIgnoreResponse {
  /// Characters to not transform when masking.
  final String charactersToSkip;

  /// Common characters to not transform when masking. Useful to avoid removing punctuation.
  final String commonCharactersToIgnore;

  GooglePrivacyDlpV2CharsToIgnoreResponse({
    required this.charactersToSkip,
    required this.commonCharactersToIgnore,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['charactersToSkip'] = charactersToSkip;
    map['commonCharactersToIgnore'] = commonCharactersToIgnore;
    return map;
  }

  factory GooglePrivacyDlpV2CharsToIgnoreResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CharsToIgnoreResponse(
      charactersToSkip: map['charactersToSkip'] as String,
      commonCharactersToIgnore: map['commonCharactersToIgnore'] as String,
    );
  }
}
