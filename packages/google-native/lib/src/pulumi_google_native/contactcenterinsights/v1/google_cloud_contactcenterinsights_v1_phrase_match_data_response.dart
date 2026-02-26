// ignore_for_file: unused_element, unnecessary_cast

/// The data for a matched phrase matcher. Represents information identifying a phrase matcher for a given match.
class GoogleCloudContactcenterinsightsV1PhraseMatchDataResponse {
  /// The human-readable name of the phrase matcher.
  final String displayName;

  /// The unique identifier (the resource name) of the phrase matcher.
  final String phraseMatcher;

  GoogleCloudContactcenterinsightsV1PhraseMatchDataResponse({
    required this.displayName,
    required this.phraseMatcher,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['phraseMatcher'] = phraseMatcher;
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1PhraseMatchDataResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1PhraseMatchDataResponse(
      displayName: map['displayName'] as String,
      phraseMatcher: map['phraseMatcher'] as String,
    );
  }
}
