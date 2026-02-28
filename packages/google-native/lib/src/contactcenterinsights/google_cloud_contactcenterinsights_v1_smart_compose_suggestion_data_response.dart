// ignore_for_file: unused_element, unnecessary_cast

/// Agent Assist Smart Compose suggestion data.
class GoogleCloudContactcenterinsightsV1SmartComposeSuggestionDataResponse {
  /// The system's confidence score that this suggestion is a good match for this conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely certain).
  final double confidenceScore;

  /// Map that contains metadata about the Smart Compose suggestion and the document from which it originates.
  final Map<String, String> metadata;

  /// The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{answer_record}
  final String queryRecord;

  /// The content of the suggestion.
  final String suggestion;

  /// Creates a new [GoogleCloudContactcenterinsightsV1SmartComposeSuggestionDataResponse].
  /// [confidenceScore] The system's confidence score that this suggestion is a good match for this conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely certain).
  /// [metadata] Map that contains metadata about the Smart Compose suggestion and the document from which it originates.
  /// [queryRecord] The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{answer_record}
  /// [suggestion] The content of the suggestion.
  GoogleCloudContactcenterinsightsV1SmartComposeSuggestionDataResponse({
    required this.confidenceScore,
    required this.metadata,
    required this.queryRecord,
    required this.suggestion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['confidenceScore'] = confidenceScore;
    map['metadata'] = metadata;
    map['queryRecord'] = queryRecord;
    map['suggestion'] = suggestion;
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1SmartComposeSuggestionDataResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1SmartComposeSuggestionDataResponse(
      confidenceScore: map['confidenceScore'] as double,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      queryRecord: map['queryRecord'] as String,
      suggestion: map['suggestion'] as String,
    );
  }
}
