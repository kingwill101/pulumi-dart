// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_contactcenterinsights_v1_call_annotation_response.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_level_sentiment_response.dart';
import 'google_cloud_contactcenterinsights_v1_issue_model_result_response.dart';

/// Call-specific metadata created during analysis.
class GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadataResponse {
  /// A list of call annotations that apply to this call.
  final List<GoogleCloudContactcenterinsightsV1CallAnnotationResponse>
      annotations;

  /// All the entities in the call.
  final Map<String, String> entities;

  /// All the matched intents in the call.
  final Map<String, String> intents;

  /// Overall conversation-level issue modeling result.
  final GoogleCloudContactcenterinsightsV1IssueModelResultResponse
      issueModelResult;

  /// All the matched phrase matchers in the call.
  final Map<String, String> phraseMatchers;

  /// Overall conversation-level sentiment for each channel of the call.
  final List<
          GoogleCloudContactcenterinsightsV1ConversationLevelSentimentResponse>
      sentiments;

  GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadataResponse({
    required this.annotations,
    required this.entities,
    required this.intents,
    required this.issueModelResult,
    required this.phraseMatchers,
    required this.sentiments,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotations'] = Input.encodeList<
        GoogleCloudContactcenterinsightsV1CallAnnotationResponse,
        Map<String, dynamic>>(annotations, (value) => value.toMap());
    map['entities'] = entities;
    map['intents'] = intents;
    map['issueModelResult'] = issueModelResult.toMap();
    map['phraseMatchers'] = phraseMatchers;
    map['sentiments'] = Input.encodeList<
        GoogleCloudContactcenterinsightsV1ConversationLevelSentimentResponse,
        Map<String, dynamic>>(sentiments, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadataResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadataResponse(
      annotations: Input.decodeList<
              GoogleCloudContactcenterinsightsV1CallAnnotationResponse>(
          map['annotations'],
          (value) =>
              GoogleCloudContactcenterinsightsV1CallAnnotationResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      entities: (map['entities'] as Map).cast<String, String>(),
      intents: (map['intents'] as Map).cast<String, String>(),
      issueModelResult:
          GoogleCloudContactcenterinsightsV1IssueModelResultResponse.fromMap(
              (map['issueModelResult'] as Map).cast<String, dynamic>()),
      phraseMatchers: (map['phraseMatchers'] as Map).cast<String, String>(),
      sentiments: Input.decodeList<
              GoogleCloudContactcenterinsightsV1ConversationLevelSentimentResponse>(
          map['sentiments'],
          (value) =>
              GoogleCloudContactcenterinsightsV1ConversationLevelSentimentResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
