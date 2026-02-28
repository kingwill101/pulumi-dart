// ignore_for_file: unused_element, unnecessary_cast

import 'conversation_profile_human_agent_assistant_config_human_agent_suggestion_config_feature_config_conversation_model_config.dart';
import 'conversation_profile_human_agent_assistant_config_human_agent_suggestion_config_feature_config_conversation_process_config.dart';
import 'conversation_profile_human_agent_assistant_config_human_agent_suggestion_config_feature_config_query_config.dart';
import 'conversation_profile_human_agent_assistant_config_human_agent_suggestion_config_feature_config_suggestion_feature.dart';
import 'conversation_profile_human_agent_assistant_config_human_agent_suggestion_config_feature_config_suggestion_trigger_settings.dart';

class ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfig {
  /// Configs of custom conversation model.
  /// Structure is documented below.
  final ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigConversationModelConfig?
      conversationModelConfig;

  /// Config to process conversation.
  /// Structure is documented below.
  final ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigConversationProcessConfig?
      conversationProcessConfig;

  /// Disable the logging of search queries sent by human agents. It can prevent those queries from being stored at answer records.
  /// This feature is only supported for types: KNOWLEDGE_SEARCH.
  final bool? disableAgentQueryLogging;

  /// Enable including conversation context during query answer generation.
  /// This feature is only supported for types: KNOWLEDGE_SEARCH.
  final bool? enableConversationAugmentedQuery;

  /// Automatically iterates all participants and tries to compile suggestions.
  /// This feature is only supported for types: ARTICLE_SUGGESTION, FAQ, DIALOGFLOW_ASSIST, KNOWLEDGE_ASSIST.
  final bool? enableEventBasedSuggestion;

  /// Enable query suggestion only.
  /// This feature is only supported for types: KNOWLEDGE_ASSIST
  final bool? enableQuerySuggestionOnly;

  /// Enable query suggestion even if we can't find its answer. By default, queries are suggested only if we find its answer.
  /// This feature is only supported for types: KNOWLEDGE_ASSIST.
  final bool? enableQuerySuggestionWhenNoAnswer;

  /// Configs of query.
  /// Structure is documented below.
  final ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfig?
      queryConfig;

  /// The suggestion feature.
  /// Structure is documented below.
  final ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigSuggestionFeature?
      suggestionFeature;

  /// Settings of suggestion trigger.
  /// This feature is only supported for types: ARTICLE_SUGGESTION, FAQ.
  /// Structure is documented below.
  final ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigSuggestionTriggerSettings?
      suggestionTriggerSettings;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfig].
  /// [conversationModelConfig] Configs of custom conversation model.
  /// [conversationProcessConfig] Config to process conversation.
  /// [disableAgentQueryLogging] Disable the logging of search queries sent by human agents. It can prevent those queries from being stored at answer records.
  /// [enableConversationAugmentedQuery] Enable including conversation context during query answer generation.
  /// [enableEventBasedSuggestion] Automatically iterates all participants and tries to compile suggestions.
  /// [enableQuerySuggestionOnly] Enable query suggestion only.
  /// [enableQuerySuggestionWhenNoAnswer] Enable query suggestion even if we can't find its answer. By default, queries are suggested only if we find its answer.
  /// [queryConfig] Configs of query.
  /// [suggestionFeature] The suggestion feature.
  /// [suggestionTriggerSettings] Settings of suggestion trigger.
  ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfig({
    this.conversationModelConfig,
    this.conversationProcessConfig,
    this.disableAgentQueryLogging,
    this.enableConversationAugmentedQuery,
    this.enableEventBasedSuggestion,
    this.enableQuerySuggestionOnly,
    this.enableQuerySuggestionWhenNoAnswer,
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
    final enableConversationAugmentedQueryValue =
        enableConversationAugmentedQuery;
    if (enableConversationAugmentedQueryValue != null) {
      map['enableConversationAugmentedQuery'] =
          enableConversationAugmentedQueryValue;
    }
    final enableEventBasedSuggestionValue = enableEventBasedSuggestion;
    if (enableEventBasedSuggestionValue != null) {
      map['enableEventBasedSuggestion'] = enableEventBasedSuggestionValue;
    }
    final enableQuerySuggestionOnlyValue = enableQuerySuggestionOnly;
    if (enableQuerySuggestionOnlyValue != null) {
      map['enableQuerySuggestionOnly'] = enableQuerySuggestionOnlyValue;
    }
    final enableQuerySuggestionWhenNoAnswerValue =
        enableQuerySuggestionWhenNoAnswer;
    if (enableQuerySuggestionWhenNoAnswerValue != null) {
      map['enableQuerySuggestionWhenNoAnswer'] =
          enableQuerySuggestionWhenNoAnswerValue;
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

  factory ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfig.fromMap(
      Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfig(
      conversationModelConfig: map['conversationModelConfig'] == null
          ? null
          : ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigConversationModelConfig
              .fromMap((map['conversationModelConfig'] as Map)
                  .cast<String, dynamic>()),
      conversationProcessConfig: map['conversationProcessConfig'] == null
          ? null
          : ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigConversationProcessConfig
              .fromMap((map['conversationProcessConfig'] as Map)
                  .cast<String, dynamic>()),
      disableAgentQueryLogging: map['disableAgentQueryLogging'] == null
          ? null
          : map['disableAgentQueryLogging'] as bool,
      enableConversationAugmentedQuery:
          map['enableConversationAugmentedQuery'] == null
              ? null
              : map['enableConversationAugmentedQuery'] as bool,
      enableEventBasedSuggestion: map['enableEventBasedSuggestion'] == null
          ? null
          : map['enableEventBasedSuggestion'] as bool,
      enableQuerySuggestionOnly: map['enableQuerySuggestionOnly'] == null
          ? null
          : map['enableQuerySuggestionOnly'] as bool,
      enableQuerySuggestionWhenNoAnswer:
          map['enableQuerySuggestionWhenNoAnswer'] == null
              ? null
              : map['enableQuerySuggestionWhenNoAnswer'] as bool,
      queryConfig: map['queryConfig'] == null
          ? null
          : ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfig
              .fromMap((map['queryConfig'] as Map).cast<String, dynamic>()),
      suggestionFeature: map['suggestionFeature'] == null
          ? null
          : ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigSuggestionFeature
              .fromMap(
                  (map['suggestionFeature'] as Map).cast<String, dynamic>()),
      suggestionTriggerSettings: map['suggestionTriggerSettings'] == null
          ? null
          : ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigSuggestionTriggerSettings
              .fromMap((map['suggestionTriggerSettings'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
