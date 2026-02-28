// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_human_agent_assistant_config_conversation_model_config_response.dart';
import 'google_cloud_dialogflow_v2_human_agent_assistant_config_conversation_process_config_response.dart';
import 'google_cloud_dialogflow_v2_human_agent_assistant_config_suggestion_query_config_response.dart';
import 'google_cloud_dialogflow_v2_human_agent_assistant_config_suggestion_trigger_settings_response.dart';
import 'google_cloud_dialogflow_v2_suggestion_feature_response.dart';

/// Config for suggestion features.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfigResponse {
  /// Configs of custom conversation model.
  final GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfigResponse
      conversationModelConfig;

  /// Configs for processing conversation.
  final GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfigResponse
      conversationProcessConfig;

  /// Optional. Disable the logging of search queries sent by human agents. It can prevent those queries from being stored at answer records. Supported features: KNOWLEDGE_SEARCH.
  final bool disableAgentQueryLogging;

  /// Automatically iterates all participants and tries to compile suggestions. Supported features: ARTICLE_SUGGESTION, FAQ, DIALOGFLOW_ASSIST, KNOWLEDGE_ASSIST.
  final bool enableEventBasedSuggestion;

  /// Configs of query.
  final GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigResponse
      queryConfig;

  /// The suggestion feature.
  final GoogleCloudDialogflowV2SuggestionFeatureResponse suggestionFeature;

  /// Settings of suggestion trigger. Currently, only ARTICLE_SUGGESTION and FAQ will use this field.
  final GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettingsResponse
      suggestionTriggerSettings;

  /// Creates a new [GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfigResponse].
  /// [conversationModelConfig] Configs of custom conversation model.
  /// [conversationProcessConfig] Configs for processing conversation.
  /// [disableAgentQueryLogging] Optional. Disable the logging of search queries sent by human agents. It can prevent those queries from being stored at answer records. Supported features: KNOWLEDGE_SEARCH.
  /// [enableEventBasedSuggestion] Automatically iterates all participants and tries to compile suggestions. Supported features: ARTICLE_SUGGESTION, FAQ, DIALOGFLOW_ASSIST, KNOWLEDGE_ASSIST.
  /// [queryConfig] Configs of query.
  /// [suggestionFeature] The suggestion feature.
  /// [suggestionTriggerSettings] Settings of suggestion trigger. Currently, only ARTICLE_SUGGESTION and FAQ will use this field.
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfigResponse({
    required this.conversationModelConfig,
    required this.conversationProcessConfig,
    required this.disableAgentQueryLogging,
    required this.enableEventBasedSuggestion,
    required this.queryConfig,
    required this.suggestionFeature,
    required this.suggestionTriggerSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conversationModelConfig'] = conversationModelConfig.toMap();
    map['conversationProcessConfig'] = conversationProcessConfig.toMap();
    map['disableAgentQueryLogging'] = disableAgentQueryLogging;
    map['enableEventBasedSuggestion'] = enableEventBasedSuggestion;
    map['queryConfig'] = queryConfig.toMap();
    map['suggestionFeature'] = suggestionFeature.toMap();
    map['suggestionTriggerSettings'] = suggestionTriggerSettings.toMap();
    return map;
  }

  factory GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfigResponse(
      conversationModelConfig:
          GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfigResponse
              .fromMap((map['conversationModelConfig'] as Map)
                  .cast<String, dynamic>()),
      conversationProcessConfig:
          GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfigResponse
              .fromMap((map['conversationProcessConfig'] as Map)
                  .cast<String, dynamic>()),
      disableAgentQueryLogging: map['disableAgentQueryLogging'] as bool,
      enableEventBasedSuggestion: map['enableEventBasedSuggestion'] as bool,
      queryConfig:
          GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigResponse
              .fromMap((map['queryConfig'] as Map).cast<String, dynamic>()),
      suggestionFeature:
          GoogleCloudDialogflowV2SuggestionFeatureResponse.fromMap(
              (map['suggestionFeature'] as Map).cast<String, dynamic>()),
      suggestionTriggerSettings:
          GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettingsResponse
              .fromMap((map['suggestionTriggerSettings'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
