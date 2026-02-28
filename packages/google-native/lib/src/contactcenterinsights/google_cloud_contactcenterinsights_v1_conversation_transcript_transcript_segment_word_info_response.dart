// ignore_for_file: unused_element, unnecessary_cast

/// Word-level info for words in a transcript.
class GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfoResponse {
  /// A confidence estimate between 0.0 and 1.0 of the fidelity of this word. A default value of 0.0 indicates that the value is unset.
  final double confidence;

  /// Time offset of the end of this word relative to the beginning of the total conversation.
  final String endOffset;

  /// Time offset of the start of this word relative to the beginning of the total conversation.
  final String startOffset;

  /// The word itself. Includes punctuation marks that surround the word.
  final String word;

  /// Creates a new [GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfoResponse].
  /// [confidence] A confidence estimate between 0.0 and 1.0 of the fidelity of this word. A default value of 0.0 indicates that the value is unset.
  /// [endOffset] Time offset of the end of this word relative to the beginning of the total conversation.
  /// [startOffset] Time offset of the start of this word relative to the beginning of the total conversation.
  /// [word] The word itself. Includes punctuation marks that surround the word.
  GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfoResponse({
    required this.confidence,
    required this.endOffset,
    required this.startOffset,
    required this.word,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['confidence'] = confidence;
    map['endOffset'] = endOffset;
    map['startOffset'] = startOffset;
    map['word'] = word;
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfoResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfoResponse(
      confidence: map['confidence'] as double,
      endOffset: map['endOffset'] as String,
      startOffset: map['startOffset'] as String,
      word: map['word'] as String,
    );
  }
}
