// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_conversation_model_config.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_conversation_process_config.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_suggestion_query_config.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_suggestion_trigger_settings.dart';
import 'google_cloud_dialogflow_v2beta1_suggestion_feature.dart';

/// Config for suggestion features.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfig {
  /// Configs of custom conversation model.
  final GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationModelConfig?
      conversationModelConfig;

  /// Configs for processing conversation.
  final GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationProcessConfig?
      conversationProcessConfig;

  /// Optional. Disable the logging of search queries sent by human agents. It can prevent those queries from being stored at answer records. Supported features: KNOWLEDGE_SEARCH.
  final bool? disableAgentQueryLogging;

  /// Automatically iterates all participants and tries to compile suggestions. Supported features: ARTICLE_SUGGESTION, FAQ, DIALOGFLOW_ASSIST, ENTITY_EXTRACTION, KNOWLEDGE_ASSIST.
  final bool? enableEventBasedSuggestion;

  /// Configs of query.
  final GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfig?
      queryConfig;

  /// The suggestion feature.
  final GoogleCloudDialogflowV2beta1SuggestionFeature? suggestionFeature;

  /// Settings of suggestion trigger. Currently, only ARTICLE_SUGGESTION, FAQ, and DIALOGFLOW_ASSIST will use this field.
  final GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionTriggerSettings?
      suggestionTriggerSettings;

  /// Creates a new [GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfig].
  /// [conversationModelConfig] Configs of custom conversation model.
  /// [conversationProcessConfig] Configs for processing conversation.
  /// [disableAgentQueryLogging] Optional. Disable the logging of search queries sent by human agents. It can prevent those queries from being stored at answer records. Supported features: KNOWLEDGE_SEARCH.
  /// [enableEventBasedSuggestion] Automatically iterates all participants and tries to compile suggestions. Supported features: ARTICLE_SUGGESTION, FAQ, DIALOGFLOW_ASSIST, ENTITY_EXTRACTION, KNOWLEDGE_ASSIST.
  /// [queryConfig] Configs of query.
  /// [suggestionFeature] The suggestion feature.
  /// [suggestionTriggerSettings] Settings of suggestion trigger. Currently, only ARTICLE_SUGGESTION, FAQ, and DIALOGFLOW_ASSIST will use this field.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfig({
    this.conversationModelConfig,
    this.conversationProcessConfig,
    this.disableAgentQueryLogging,
    this.enableEventBasedSuggestion,
    this.queryConfig,
    this.suggestionFeature,
    this.suggestionTriggerSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conversationModelConfigValue = conversationModelConfig;
    if (conversationModelConfigValue != null) {
      map['conversationModelConfig'] = conversationModelConfigValue.toMap();
    }
    final conversationProcessConfigValue = conversationProcessConfig;
    if (conversationProcessConfigValue != null) {
      map['conversationProcessConfig'] = conversationProcessConfigValue.toMap();
    }
    final disableAgentQueryLoggingValue = disableAgentQueryLogging;
    if (disableAgentQueryLoggingValue != null) {
      map['disableAgentQueryLogging'] = disableAgentQueryLoggingValue;
    }
    final enableEventBasedSuggestionValue = enableEventBasedSuggestion;
    if (enableEventBasedSuggestionValue != null) {
      map['enableEventBasedSuggestion'] = enableEventBasedSuggestionValue;
    }
    final queryConfigValue = queryConfig;
    if (queryConfigValue != null) {
      map['queryConfig'] = queryConfigValue.toMap();
    }
    final suggestionFeatureValue = suggestionFeature;
    if (suggestionFeatureValue != null) {
      map['suggestionFeature'] = suggestionFeatureValue.toMap();
    }
    final suggestionTriggerSettingsValue = suggestionTriggerSettings;
    if (suggestionTriggerSettingsValue != null) {
      map['suggestionTriggerSettings'] = suggestionTriggerSettingsValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfig(
      conversationModelConfig: map['conversationModelConfig'] == null
          ? null
          : GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationModelConfig
              .fromMap((map['conversationModelConfig'] as Map)
                  .cast<String, dynamic>()),
      conversationProcessConfig: map['conversationProcessConfig'] == null
          ? null
          : GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationProcessConfig
              .fromMap((map['conversationProcessConfig'] as Map)
                  .cast<String, dynamic>()),
      disableAgentQueryLogging: map['disableAgentQueryLogging'] == null
          ? null
          : map['disableAgentQueryLogging'] as bool,
      enableEventBasedSuggestion: map['enableEventBasedSuggestion'] == null
          ? null
          : map['enableEventBasedSuggestion'] as bool,
      queryConfig: map['queryConfig'] == null
          ? null
          : GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfig
              .fromMap((map['queryConfig'] as Map).cast<String, dynamic>()),
      suggestionFeature: map['suggestionFeature'] == null
          ? null
          : GoogleCloudDialogflowV2beta1SuggestionFeature.fromMap(
              (map['suggestionFeature'] as Map).cast<String, dynamic>()),
      suggestionTriggerSettings: map['suggestionTriggerSettings'] == null
          ? null
          : GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionTriggerSettings
              .fromMap((map['suggestionTriggerSettings'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
