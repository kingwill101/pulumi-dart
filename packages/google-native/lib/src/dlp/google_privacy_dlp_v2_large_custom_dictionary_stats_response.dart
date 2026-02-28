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
    return <String, dynamic>{
      'approxNumPhrases': approxNumPhrases,
    };
  }

  factory GooglePrivacyDlpV2LargeCustomDictionaryStatsResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2LargeCustomDictionaryStatsResponse(
      approxNumPhrases: map['approxNumPhrases'] as String,
    );
  }
}

