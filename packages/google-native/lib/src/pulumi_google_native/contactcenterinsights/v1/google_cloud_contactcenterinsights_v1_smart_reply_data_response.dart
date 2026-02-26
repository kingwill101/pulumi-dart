// ignore_for_file: unused_element, unnecessary_cast

/// Agent Assist Smart Reply data.
class GoogleCloudContactcenterinsightsV1SmartReplyDataResponse {
  /// The system's confidence score that this reply is a good match for this conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely certain).
  final double confidenceScore;

  /// Map that contains metadata about the Smart Reply and the document from which it originates.
  final Map<String, String> metadata;

  /// The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{answer_record}
  final String queryRecord;

  /// The content of the reply.
  final String reply;

  GoogleCloudContactcenterinsightsV1SmartReplyDataResponse({
    required this.confidenceScore,
    required this.metadata,
    required this.queryRecord,
    required this.reply,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['confidenceScore'] = confidenceScore;
    map['metadata'] = metadata;
    map['queryRecord'] = queryRecord;
    map['reply'] = reply;
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1SmartReplyDataResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1SmartReplyDataResponse(
      confidenceScore: map['confidenceScore'] as double,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      queryRecord: map['queryRecord'] as String,
      reply: map['reply'] as String,
    );
  }
}
