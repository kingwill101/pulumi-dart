// ignore_for_file: unused_element, unnecessary_cast

import 'conversation_profile_human_agent_assistant_config_end_user_suggestion_config_feature_config_query_config_context_filter_settings.dart';
import 'conversation_profile_human_agent_assistant_config_end_user_suggestion_config_feature_config_query_config_dialogflow_query_source.dart';
import 'conversation_profile_human_agent_assistant_config_end_user_suggestion_config_feature_config_query_config_document_query_source.dart';
import 'conversation_profile_human_agent_assistant_config_end_user_suggestion_config_feature_config_query_config_knowledge_base_query_source.dart';
import 'conversation_profile_human_agent_assistant_config_end_user_suggestion_config_feature_config_query_config_sections.dart';

class ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfig {
  /// Confidence threshold of query result.
  /// This feature is only supported for types: ARTICLE_SUGGESTION, FAQ, SMART_REPLY, SMART_COMPOSE, KNOWLEDGE_SEARCH, KNOWLEDGE_ASSIST, ENTITY_EXTRACTION.
  final double? confidenceThreshold;

  /// Determines how recent conversation context is filtered when generating suggestions. If unspecified, no messages will be dropped.
  /// Structure is documented below.
  final ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigContextFilterSettings?
      contextFilterSettings;

  /// Query from Dialogflow agent.
  /// This feature is supported for types: DIALOGFLOW_ASSIST.
  /// Structure is documented below.
  final ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySource?
      dialogflowQuerySource;

  /// Query from knowledge base document.
  /// This feature is supported for types: SMART_REPLY, SMART_COMPOSE.
  /// Structure is documented below.
  final ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDocumentQuerySource?
      documentQuerySource;

  /// Query from knowledgebase.
  /// This feature is only supported for types: ARTICLE_SUGGESTION, FAQ.
  /// Structure is documented below.
  final ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigKnowledgeBaseQuerySource?
      knowledgeBaseQuerySource;

  /// Maximum number of results to return.
  final int? maxResults;

  /// he customized sections chosen to return when requesting a summary of a conversation.
  /// Structure is documented below.
  final ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigSections?
      sections;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfig].
  /// [confidenceThreshold] Confidence threshold of query result.
  /// [contextFilterSettings] Determines how recent conversation context is filtered when generating suggestions. If unspecified, no messages will be dropped.
  /// [dialogflowQuerySource] Query from Dialogflow agent.
  /// [documentQuerySource] Query from knowledge base document.
  /// [knowledgeBaseQuerySource] Query from knowledgebase.
  /// [maxResults] Maximum number of results to return.
  /// [sections] he customized sections chosen to return when requesting a summary of a conversation.
  ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfig({
    this.confidenceThreshold,
    this.contextFilterSettings,
    this.dialogflowQuerySource,
    this.documentQuerySource,
    this.knowledgeBaseQuerySource,
    this.maxResults,
    this.sections,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final confidenceThresholdValue = confidenceThreshold;
    if (confidenceThresholdValue != null) {
      map['confidenceThreshold'] = confidenceThresholdValue;
    }
    final contextFilterSettingsValue = contextFilterSettings;
    if (contextFilterSettingsValue != null) {
      map['contextFilterSettings'] = contextFilterSettingsValue.toMap();
    }
    final dialogflowQuerySourceValue = dialogflowQuerySource;
    if (dialogflowQuerySourceValue != null) {
      map['dialogflowQuerySource'] = dialogflowQuerySourceValue.toMap();
    }
    final documentQuerySourceValue = documentQuerySource;
    if (documentQuerySourceValue != null) {
      map['documentQuerySource'] = documentQuerySourceValue.toMap();
    }
    final knowledgeBaseQuerySourceValue = knowledgeBaseQuerySource;
    if (knowledgeBaseQuerySourceValue != null) {
      map['knowledgeBaseQuerySource'] = knowledgeBaseQuerySourceValue.toMap();
    }
    final maxResultsValue = maxResults;
    if (maxResultsValue != null) {
      map['maxResults'] = maxResultsValue;
    }
    final sectionsValue = sections;
    if (sectionsValue != null) {
      map['sections'] = sectionsValue.toMap();
    }
    return map;
  }

  factory ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfig.fromMap(
      Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfig(
      confidenceThreshold: map['confidenceThreshold'] == null
          ? null
          : map['confidenceThreshold'] as double,
      contextFilterSettings: map['contextFilterSettings'] == null
          ? null
          : ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigContextFilterSettings
              .fromMap((map['contextFilterSettings'] as Map)
                  .cast<String, dynamic>()),
      dialogflowQuerySource: map['dialogflowQuerySource'] == null
          ? null
          : ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySource
              .fromMap((map['dialogflowQuerySource'] as Map)
                  .cast<String, dynamic>()),
      documentQuerySource: map['documentQuerySource'] == null
          ? null
          : ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDocumentQuerySource
              .fromMap(
                  (map['documentQuerySource'] as Map).cast<String, dynamic>()),
      knowledgeBaseQuerySource: map['knowledgeBaseQuerySource'] == null
          ? null
          : ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigKnowledgeBaseQuerySource
              .fromMap((map['knowledgeBaseQuerySource'] as Map)
                  .cast<String, dynamic>()),
      maxResults: map['maxResults'] == null ? null : map['maxResults'] as int,
      sections: map['sections'] == null
          ? null
          : ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigSections
              .fromMap((map['sections'] as Map).cast<String, dynamic>()),
    );
  }
}
