// ignore_for_file: unused_element, unnecessary_cast

/// Metadata from Dialogflow relating to the current transcript segment.
class GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadataResponse {
  /// Whether the transcript segment was covered under the configured smart reply allowlist in Agent Assist.
  final bool smartReplyAllowlistCovered;

  GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadataResponse({
    required this.smartReplyAllowlistCovered,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['smartReplyAllowlistCovered'] = smartReplyAllowlistCovered;
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadataResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadataResponse(
      smartReplyAllowlistCovered: map['smartReplyAllowlistCovered'] as bool,
    );
  }
}
