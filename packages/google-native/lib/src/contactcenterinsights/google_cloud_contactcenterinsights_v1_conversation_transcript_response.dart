// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_conversation_transcript_transcript_segment_response.dart';

/// A message representing the transcript of a conversation.
class GoogleCloudContactcenterinsightsV1ConversationTranscriptResponse {
  /// A list of sequential transcript segments that comprise the conversation.
  final List<
          GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentResponse>
      transcriptSegments;

  /// Creates a new [GoogleCloudContactcenterinsightsV1ConversationTranscriptResponse].
  /// [transcriptSegments] A list of sequential transcript segments that comprise the conversation.
  GoogleCloudContactcenterinsightsV1ConversationTranscriptResponse({
    required this.transcriptSegments,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['transcriptSegments'] = pulumi.Input.encodeList<
        GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentResponse,
        Map<String, dynamic>>(transcriptSegments, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1ConversationTranscriptResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1ConversationTranscriptResponse(
      transcriptSegments: pulumi.Input.decodeList<
              GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentResponse>(
          map['transcriptSegments'],
          (value) =>
              GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
