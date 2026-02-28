// ignore_for_file: unused_element, unnecessary_cast

/// Summary statistics of a custom dictionary.
class GooglePrivacyDlpV2LargeCustomDictionaryStatsResponse {
  /// Approximate number of distinct phrases in the dictionary.
  final String approxNumPhrases;

  /// Creates a new [GooglePrivacyDlpV2LargeCustomDictionaryStatsResponse].
  /// [approxNumPhrases] Approximate number of distinct phrases in the dictionary.
  GooglePrivacyDlpV2LargeCustomDictionaryStatsResponse({
    required this.approxNumPhrases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['approxNumPhrases'] = approxNumPhrases;
    return map;
  }

  factory GooglePrivacyDlpV2LargeCustomDictionaryStatsResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2LargeCustomDictionaryStatsResponse(
      approxNumPhrases: map['approxNumPhrases'] as String,
    );
  }
}
