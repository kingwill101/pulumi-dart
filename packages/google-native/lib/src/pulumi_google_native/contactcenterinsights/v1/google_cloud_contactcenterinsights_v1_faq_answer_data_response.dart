// ignore_for_file: unused_element, unnecessary_cast

/// Agent Assist frequently-asked-question answer data.
class GoogleCloudContactcenterinsightsV1FaqAnswerDataResponse {
  /// The piece of text from the `source` knowledge base document.
  final String answer;

  /// The system's confidence score that this answer is a good match for this conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely certain).
  final double confidenceScore;

  /// Map that contains metadata about the FAQ answer and the document that it originates from.
  final Map<String, String> metadata;

  /// The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{answer_record}
  final String queryRecord;

  /// The corresponding FAQ question.
  final String question;

  /// The knowledge document that this answer was extracted from. Format: projects/{project}/knowledgeBases/{knowledge_base}/documents/{document}.
  final String source;

  GoogleCloudContactcenterinsightsV1FaqAnswerDataResponse({
    required this.answer,
    required this.confidenceScore,
    required this.metadata,
    required this.queryRecord,
    required this.question,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['answer'] = answer;
    map['confidenceScore'] = confidenceScore;
    map['metadata'] = metadata;
    map['queryRecord'] = queryRecord;
    map['question'] = question;
    map['source'] = source;
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1FaqAnswerDataResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1FaqAnswerDataResponse(
      answer: map['answer'] as String,
      confidenceScore: map['confidenceScore'] as double,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      queryRecord: map['queryRecord'] as String,
      question: map['question'] as String,
      source: map['source'] as String,
    );
  }
}
