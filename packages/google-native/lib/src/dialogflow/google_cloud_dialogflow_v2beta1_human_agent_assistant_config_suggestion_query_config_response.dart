// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_suggestion_query_config_context_filter_settings_response.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_suggestion_query_config_dialogflow_query_source_response.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_suggestion_query_config_document_query_source_response.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_suggestion_query_config_knowledge_base_query_source_response.dart';

/// Config for suggestion query.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigResponse {
  /// Confidence threshold of query result. Agent Assist gives each suggestion a score in the range [0.0, 1.0], based on the relevance between the suggestion and the current conversation context. A score of 0.0 has no relevance, while a score of 1.0 has high relevance. Only suggestions with a score greater than or equal to the value of this field are included in the results. For a baseline model (the default), the recommended value is in the range [0.05, 0.1]. For a custom model, there is no recommended value. Tune this value by starting from a very low value and slowly increasing until you have desired results. If this field is not set, it is default to 0.0, which means that all suggestions are returned. Supported features: ARTICLE_SUGGESTION, FAQ, SMART_REPLY, SMART_COMPOSE, KNOWLEDGE_SEARCH, KNOWLEDGE_ASSIST, ENTITY_EXTRACTION.
  final double confidenceThreshold;

  /// Determines how recent conversation context is filtered when generating suggestions. If unspecified, no messages will be dropped.
  final GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettingsResponse
      contextFilterSettings;

  /// Query from Dialogflow agent. It is used by DIALOGFLOW_ASSIST, ENTITY_EXTRACTION.
  final GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceResponse
      dialogflowQuerySource;

  /// Query from knowledge base document. It is used by: SMART_REPLY, SMART_COMPOSE.
  final GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySourceResponse
      documentQuerySource;

  /// Query from knowledgebase. It is used by: ARTICLE_SUGGESTION, FAQ.
  final GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySourceResponse
      knowledgeBaseQuerySource;

  /// Maximum number of results to return. Currently, if unset, defaults to 10. And the max number is 20.
  final int maxResults;

  /// Creates a new [GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigResponse].
  /// [confidenceThreshold] Confidence threshold of query result. Agent Assist gives each suggestion a score in the range [0.0, 1.0], based on the relevance between the suggestion and the current conversation context. A score of 0.0 has no relevance, while a score of 1.0 has high relevance. Only suggestions with a score greater than or equal to the value of this field are included in the results. For a baseline model (the default), the recommended value is in the range [0.05, 0.1]. For a custom model, there is no recommended value. Tune this value by starting from a very low value and slowly increasing until you have desired results. If this field is not set, it is default to 0.0, which means that all suggestions are returned. Supported features: ARTICLE_SUGGESTION, FAQ, SMART_REPLY, SMART_COMPOSE, KNOWLEDGE_SEARCH, KNOWLEDGE_ASSIST, ENTITY_EXTRACTION.
  /// [contextFilterSettings] Determines how recent conversation context is filtered when generating suggestions. If unspecified, no messages will be dropped.
  /// [dialogflowQuerySource] Query from Dialogflow agent. It is used by DIALOGFLOW_ASSIST, ENTITY_EXTRACTION.
  /// [documentQuerySource] Query from knowledge base document. It is used by: SMART_REPLY, SMART_COMPOSE.
  /// [knowledgeBaseQuerySource] Query from knowledgebase. It is used by: ARTICLE_SUGGESTION, FAQ.
  /// [maxResults] Maximum number of results to return. Currently, if unset, defaults to 10. And the max number is 20.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigResponse({
    required this.confidenceThreshold,
    required this.contextFilterSettings,
    required this.dialogflowQuerySource,
    required this.documentQuerySource,
    required this.knowledgeBaseQuerySource,
    required this.maxResults,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['confidenceThreshold'] = confidenceThreshold;
    map['contextFilterSettings'] = contextFilterSettings.toMap();
    map['dialogflowQuerySource'] = dialogflowQuerySource.toMap();
    map['documentQuerySource'] = documentQuerySource.toMap();
    map['knowledgeBaseQuerySource'] = knowledgeBaseQuerySource.toMap();
    map['maxResults'] = maxResults;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigResponse(
      confidenceThreshold: map['confidenceThreshold'] as double,
      contextFilterSettings:
          GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettingsResponse
              .fromMap((map['contextFilterSettings'] as Map)
                  .cast<String, dynamic>()),
      dialogflowQuerySource:
          GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceResponse
              .fromMap((map['dialogflowQuerySource'] as Map)
                  .cast<String, dynamic>()),
      documentQuerySource:
          GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySourceResponse
              .fromMap(
                  (map['documentQuerySource'] as Map).cast<String, dynamic>()),
      knowledgeBaseQuerySource:
          GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySourceResponse
              .fromMap((map['knowledgeBaseQuerySource'] as Map)
                  .cast<String, dynamic>()),
      maxResults: map['maxResults'] as int,
    );
  }
}
