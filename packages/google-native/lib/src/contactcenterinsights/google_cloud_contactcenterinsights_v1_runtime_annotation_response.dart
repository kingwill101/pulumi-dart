// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contactcenterinsights_v1_annotation_boundary_response.dart';
import 'google_cloud_contactcenterinsights_v1_answer_feedback_response.dart';
import 'google_cloud_contactcenterinsights_v1_article_suggestion_data_response.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_summarization_suggestion_data_response.dart';
import 'google_cloud_contactcenterinsights_v1_dialogflow_interaction_data_response.dart';
import 'google_cloud_contactcenterinsights_v1_faq_answer_data_response.dart';
import 'google_cloud_contactcenterinsights_v1_smart_compose_suggestion_data_response.dart';
import 'google_cloud_contactcenterinsights_v1_smart_reply_data_response.dart';

/// An annotation that was generated during the customer and agent interaction.
class GoogleCloudContactcenterinsightsV1RuntimeAnnotationResponse {
  /// The unique identifier of the annotation. Format: projects/{project}/locations/{location}/conversationDatasets/{dataset}/conversationDataItems/{data_item}/conversationAnnotations/{annotation}
  final String annotationId;

  /// The feedback that the customer has about the answer in `data`.
  final GoogleCloudContactcenterinsightsV1AnswerFeedbackResponse answerFeedback;

  /// Agent Assist Article Suggestion data.
  final GoogleCloudContactcenterinsightsV1ArticleSuggestionDataResponse
      articleSuggestion;

  /// Conversation summarization suggestion data.
  final GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionDataResponse
      conversationSummarizationSuggestion;

  /// The time at which this annotation was created.
  final String createTime;

  /// Dialogflow interaction data.
  final GoogleCloudContactcenterinsightsV1DialogflowInteractionDataResponse
      dialogflowInteraction;

  /// The boundary in the conversation where the annotation ends, inclusive.
  final GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse
      endBoundary;

  /// Agent Assist FAQ answer data.
  final GoogleCloudContactcenterinsightsV1FaqAnswerDataResponse faqAnswer;

  /// Agent Assist Smart Compose suggestion data.
  final GoogleCloudContactcenterinsightsV1SmartComposeSuggestionDataResponse
      smartComposeSuggestion;

  /// Agent Assist Smart Reply data.
  final GoogleCloudContactcenterinsightsV1SmartReplyDataResponse smartReply;

  /// The boundary in the conversation where the annotation starts, inclusive.
  final GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse
      startBoundary;

  /// Creates a new [GoogleCloudContactcenterinsightsV1RuntimeAnnotationResponse].
  /// [annotationId] The unique identifier of the annotation. Format: projects/{project}/locations/{location}/conversationDatasets/{dataset}/conversationDataItems/{data_item}/conversationAnnotations/{annotation}
  /// [answerFeedback] The feedback that the customer has about the answer in `data`.
  /// [articleSuggestion] Agent Assist Article Suggestion data.
  /// [conversationSummarizationSuggestion] Conversation summarization suggestion data.
  /// [createTime] The time at which this annotation was created.
  /// [dialogflowInteraction] Dialogflow interaction data.
  /// [endBoundary] The boundary in the conversation where the annotation ends, inclusive.
  /// [faqAnswer] Agent Assist FAQ answer data.
  /// [smartComposeSuggestion] Agent Assist Smart Compose suggestion data.
  /// [smartReply] Agent Assist Smart Reply data.
  /// [startBoundary] The boundary in the conversation where the annotation starts, inclusive.
  GoogleCloudContactcenterinsightsV1RuntimeAnnotationResponse({
    required this.annotationId,
    required this.answerFeedback,
    required this.articleSuggestion,
    required this.conversationSummarizationSuggestion,
    required this.createTime,
    required this.dialogflowInteraction,
    required this.endBoundary,
    required this.faqAnswer,
    required this.smartComposeSuggestion,
    required this.smartReply,
    required this.startBoundary,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotationId'] = annotationId;
    map['answerFeedback'] = answerFeedback.toMap();
    map['articleSuggestion'] = articleSuggestion.toMap();
    map['conversationSummarizationSuggestion'] =
        conversationSummarizationSuggestion.toMap();
    map['createTime'] = createTime;
    map['dialogflowInteraction'] = dialogflowInteraction.toMap();
    map['endBoundary'] = endBoundary.toMap();
    map['faqAnswer'] = faqAnswer.toMap();
    map['smartComposeSuggestion'] = smartComposeSuggestion.toMap();
    map['smartReply'] = smartReply.toMap();
    map['startBoundary'] = startBoundary.toMap();
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1RuntimeAnnotationResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1RuntimeAnnotationResponse(
      annotationId: map['annotationId'] as String,
      answerFeedback:
          GoogleCloudContactcenterinsightsV1AnswerFeedbackResponse.fromMap(
              (map['answerFeedback'] as Map).cast<String, dynamic>()),
      articleSuggestion:
          GoogleCloudContactcenterinsightsV1ArticleSuggestionDataResponse
              .fromMap(
                  (map['articleSuggestion'] as Map).cast<String, dynamic>()),
      conversationSummarizationSuggestion:
          GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionDataResponse
              .fromMap((map['conversationSummarizationSuggestion'] as Map)
                  .cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      dialogflowInteraction:
          GoogleCloudContactcenterinsightsV1DialogflowInteractionDataResponse
              .fromMap((map['dialogflowInteraction'] as Map)
                  .cast<String, dynamic>()),
      endBoundary:
          GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse.fromMap(
              (map['endBoundary'] as Map).cast<String, dynamic>()),
      faqAnswer:
          GoogleCloudContactcenterinsightsV1FaqAnswerDataResponse.fromMap(
              (map['faqAnswer'] as Map).cast<String, dynamic>()),
      smartComposeSuggestion:
          GoogleCloudContactcenterinsightsV1SmartComposeSuggestionDataResponse
              .fromMap((map['smartComposeSuggestion'] as Map)
                  .cast<String, dynamic>()),
      smartReply:
          GoogleCloudContactcenterinsightsV1SmartReplyDataResponse.fromMap(
              (map['smartReply'] as Map).cast<String, dynamic>()),
      startBoundary:
          GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse.fromMap(
              (map['startBoundary'] as Map).cast<String, dynamic>()),
    );
  }
}
