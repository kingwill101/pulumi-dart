// ignore_for_file: unused_element, unnecessary_cast

/// Message defining a list of words or phrases to search for in the data.
class GooglePrivacyDlpV2WordListResponse {
  /// Words or phrases defining the dictionary. The dictionary must contain at least one phrase and every phrase must contain at least 2 characters that are letters or digits. [required]
  final List<String> words;

  /// Creates a new [GooglePrivacyDlpV2WordListResponse].
  /// [words] Words or phrases defining the dictionary. The dictionary must contain at least one phrase and every phrase must contain at least 2 characters that are letters or digits. [required]
  GooglePrivacyDlpV2WordListResponse({
    required this.words,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['words'] = words;
    return map;
  }

  factory GooglePrivacyDlpV2WordListResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2WordListResponse(
      words: (map['words'] as List).cast<String>(),
    );
  }
}
