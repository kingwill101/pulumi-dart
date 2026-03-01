// ignore_for_file: unused_element, unnecessary_cast

/// Agent Assist Article Suggestion data.
class GoogleCloudContactcenterinsightsV1ArticleSuggestionDataResponse {
  /// The system's confidence score that this article is a good match for this conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely certain).
  final double confidenceScore;

  /// Map that contains metadata about the Article Suggestion and the document that it originates from.
  final Map<String, String> metadata;

  /// The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{answer_record}
  final String queryRecord;

  /// The knowledge document that this answer was extracted from. Format: projects/{project}/knowledgeBases/{knowledge_base}/documents/{document}
  final String source;

  /// Article title.
  final String title;

  /// Article URI.
  final String uri;

  /// Creates a new [GoogleCloudContactcenterinsightsV1ArticleSuggestionDataResponse].
  /// [confidenceScore] The system's confidence score that this article is a good match for this conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely certain).
  /// [metadata] Map that contains metadata about the Article Suggestion and the document that it originates from.
  /// [queryRecord] The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{answer_record}
  /// [source] The knowledge document that this answer was extracted from. Format: projects/{project}/knowledgeBases/{knowledge_base}/documents/{document}
  /// [title] Article title.
  /// [uri] Article URI.
  GoogleCloudContactcenterinsightsV1ArticleSuggestionDataResponse({
    required this.confidenceScore,
    required this.metadata,
    required this.queryRecord,
    required this.source,
    required this.title,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceScore': confidenceScore,
      'metadata': metadata,
      'queryRecord': queryRecord,
      'source': source,
      'title': title,
      'uri': uri,
    };
  }

  factory GoogleCloudContactcenterinsightsV1ArticleSuggestionDataResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContactcenterinsightsV1ArticleSuggestionDataResponse(
      confidenceScore: map['confidenceScore'] as double,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      queryRecord: map['queryRecord'] as String,
      source: map['source'] as String,
      title: map['title'] as String,
      uri: map['uri'] as String,
    );
  }
}
