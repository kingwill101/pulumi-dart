// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_conversation_model_config_response.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_conversation_process_config_response.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_suggestion_query_config_response.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_suggestion_trigger_settings_response.dart';
import 'google_cloud_dialogflow_v2beta1_suggestion_feature_response.dart';

/// Config for suggestion features.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfigResponse {
  /// Configs of custom conversation model.
  final GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationModelConfigResponse
  conversationModelConfig;

  /// Configs for processing conversation.
  final GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationProcessConfigResponse
  conversationProcessConfig;

  /// Optional. Disable the logging of search queries sent by human agents. It can prevent those queries from being stored at answer records. Supported features: KNOWLEDGE_SEARCH.
  final bool disableAgentQueryLogging;

  /// Automatically iterates all participants and tries to compile suggestions. Supported features: ARTICLE_SUGGESTION, FAQ, DIALOGFLOW_ASSIST, ENTITY_EXTRACTION, KNOWLEDGE_ASSIST.
  final bool enableEventBasedSuggestion;

  /// Configs of query.
  final GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigResponse
  queryConfig;

  /// The suggestion feature.
  final GoogleCloudDialogflowV2beta1SuggestionFeatureResponse suggestionFeature;

  /// Settings of suggestion trigger. Currently, only ARTICLE_SUGGESTION, FAQ, and DIALOGFLOW_ASSIST will use this field.
  final GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionTriggerSettingsResponse
  suggestionTriggerSettings;

  /// Creates a new [GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfigResponse].
  /// [conversationModelConfig] Configs of custom conversation model.
  /// [conversationProcessConfig] Configs for processing conversation.
  /// [disableAgentQueryLogging] Optional. Disable the logging of search queries sent by human agents. It can prevent those queries from being stored at answer records. Supported features: KNOWLEDGE_SEARCH.
  /// [enableEventBasedSuggestion] Automatically iterates all participants and tries to compile suggestions. Supported features: ARTICLE_SUGGESTION, FAQ, DIALOGFLOW_ASSIST, ENTITY_EXTRACTION, KNOWLEDGE_ASSIST.
  /// [queryConfig] Configs of query.
  /// [suggestionFeature] The suggestion feature.
  /// [suggestionTriggerSettings] Settings of suggestion trigger. Currently, only ARTICLE_SUGGESTION, FAQ, and DIALOGFLOW_ASSIST will use this field.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfigResponse({
    required this.conversationModelConfig,
    required this.conversationProcessConfig,
    required this.disableAgentQueryLogging,
    required this.enableEventBasedSuggestion,
    required this.queryConfig,
    required this.suggestionFeature,
    required this.suggestionTriggerSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationModelConfig': conversationModelConfig.toMap(),
      'conversationProcessConfig': conversationProcessConfig.toMap(),
      'disableAgentQueryLogging': disableAgentQueryLogging,
      'enableEventBasedSuggestion': enableEventBasedSuggestion,
      'queryConfig': queryConfig.toMap(),
      'suggestionFeature': suggestionFeature.toMap(),
      'suggestionTriggerSettings': suggestionTriggerSettings.toMap(),
    };
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfigResponse(
      conversationModelConfig:
          GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationModelConfigResponse.fromMap(
            (map['conversationModelConfig'] as Map).cast<String, dynamic>(),
          ),
      conversationProcessConfig:
          GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationProcessConfigResponse.fromMap(
            (map['conversationProcessConfig'] as Map).cast<String, dynamic>(),
          ),
      disableAgentQueryLogging: map['disableAgentQueryLogging'] as bool,
      enableEventBasedSuggestion: map['enableEventBasedSuggestion'] as bool,
      queryConfig:
          GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigResponse.fromMap(
            (map['queryConfig'] as Map).cast<String, dynamic>(),
          ),
      suggestionFeature:
          GoogleCloudDialogflowV2beta1SuggestionFeatureResponse.fromMap(
            (map['suggestionFeature'] as Map).cast<String, dynamic>(),
          ),
      suggestionTriggerSettings:
          GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionTriggerSettingsResponse.fromMap(
            (map['suggestionTriggerSettings'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
