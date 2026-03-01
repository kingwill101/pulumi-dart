// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_conversation_participant_response.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_transcript_transcript_segment_dialogflow_segment_metadata_response.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_transcript_transcript_segment_word_info_response.dart';
import 'google_cloud_contactcenterinsights_v1_sentiment_data_response.dart';

/// A segment of a full transcript.
class GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentResponse {
  /// For conversations derived from multi-channel audio, this is the channel number corresponding to the audio from that channel. For audioChannelCount = N, its output values can range from '1' to 'N'. A channel tag of 0 indicates that the audio is mono.
  final int channelTag;

  /// A confidence estimate between 0.0 and 1.0 of the fidelity of this segment. A default value of 0.0 indicates that the value is unset.
  final double confidence;

  /// CCAI metadata relating to the current transcript segment.
  final GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadataResponse
  dialogflowSegmentMetadata;

  /// The language code of this segment as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: "en-US".
  final String languageCode;

  /// The time that the message occurred, if provided.
  final String messageTime;

  /// The participant of this segment.
  final GoogleCloudContactcenterinsightsV1ConversationParticipantResponse
  segmentParticipant;

  /// The sentiment for this transcript segment.
  final GoogleCloudContactcenterinsightsV1SentimentDataResponse sentiment;

  /// The text of this segment.
  final String text;

  /// A list of the word-specific information for each word in the segment.
  final List<
    GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfoResponse
  >
  words;

  /// Creates a new [GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentResponse].
  /// [channelTag] For conversations derived from multi-channel audio, this is the channel number corresponding to the audio from that channel. For audioChannelCount = N, its output values can range from '1' to 'N'. A channel tag of 0 indicates that the audio is mono.
  /// [confidence] A confidence estimate between 0.0 and 1.0 of the fidelity of this segment. A default value of 0.0 indicates that the value is unset.
  /// [dialogflowSegmentMetadata] CCAI metadata relating to the current transcript segment.
  /// [languageCode] The language code of this segment as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: "en-US".
  /// [messageTime] The time that the message occurred, if provided.
  /// [segmentParticipant] The participant of this segment.
  /// [sentiment] The sentiment for this transcript segment.
  /// [text] The text of this segment.
  /// [words] A list of the word-specific information for each word in the segment.
  GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentResponse({
    required this.channelTag,
    required this.confidence,
    required this.dialogflowSegmentMetadata,
    required this.languageCode,
    required this.messageTime,
    required this.segmentParticipant,
    required this.sentiment,
    required this.text,
    required this.words,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelTag': channelTag,
      'confidence': confidence,
      'dialogflowSegmentMetadata': dialogflowSegmentMetadata.toMap(),
      'languageCode': languageCode,
      'messageTime': messageTime,
      'segmentParticipant': segmentParticipant.toMap(),
      'sentiment': sentiment.toMap(),
      'text': text,
      'words':
          pulumi.Input.encodeList<
            GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfoResponse,
            Map<String, dynamic>
          >(words, (value) => value.toMap()),
    };
  }

  factory GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentResponse(
      channelTag: map['channelTag'] as int,
      confidence: map['confidence'] as double,
      dialogflowSegmentMetadata:
          GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadataResponse.fromMap(
            (map['dialogflowSegmentMetadata'] as Map).cast<String, dynamic>(),
          ),
      languageCode: map['languageCode'] as String,
      messageTime: map['messageTime'] as String,
      segmentParticipant:
          GoogleCloudContactcenterinsightsV1ConversationParticipantResponse.fromMap(
            (map['segmentParticipant'] as Map).cast<String, dynamic>(),
          ),
      sentiment:
          GoogleCloudContactcenterinsightsV1SentimentDataResponse.fromMap(
            (map['sentiment'] as Map).cast<String, dynamic>(),
          ),
      text: map['text'] as String,
      words:
          pulumi.Input.decodeList<
            GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfoResponse
          >(
            map['words'],
            (value) =>
                GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfoResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
