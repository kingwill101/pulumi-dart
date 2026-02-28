// ignore_for_file: unused_element, unnecessary_cast

import 'conversation_profile_human_agent_assistant_config_end_user_suggestion_config_feature_config_query_config_dialogflow_query_source_human_agent_side_config.dart';

class ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySource {
  /// he name of a Dialogflow virtual agent used for end user side intent detection and suggestion. Format: projects/<Project ID>/locations/<Location ID>/agent.
  final String agent;

  /// The Dialogflow assist configuration for human agent.
  /// Structure is documented below.
  final ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySourceHumanAgentSideConfig?
      humanAgentSideConfig;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySource].
  /// [agent] he name of a Dialogflow virtual agent used for end user side intent detection and suggestion. Format: projects/<Project ID>/locations/<Location ID>/agent.
  /// [humanAgentSideConfig] The Dialogflow assist configuration for human agent.
  ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySource({
    required this.agent,
    this.humanAgentSideConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agent'] = agent;
    final humanAgentSideConfigValue = humanAgentSideConfig;
    if (humanAgentSideConfigValue != null) {
      map['humanAgentSideConfig'] = humanAgentSideConfigValue.toMap();
    }
    return map;
  }

  factory ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySource.fromMap(
      Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySource(
      agent: map['agent'] as String,
      humanAgentSideConfig: map['humanAgentSideConfig'] == null
          ? null
          : ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySourceHumanAgentSideConfig
              .fromMap(
                  (map['humanAgentSideConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
