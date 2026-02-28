// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_suggestion_query_config_dialogflow_query_source_human_agent_side_config.dart';

/// Dialogflow source setting. Supported feature: DIALOGFLOW_ASSIST, ENTITY_EXTRACTION.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource {
  /// The name of a dialogflow virtual agent used for end user side intent detection and suggestion. Format: `projects//locations//agent`. When multiple agents are allowed in the same Dialogflow project.
  final String agent;

  /// The Dialogflow assist configuration for human agent.
  final GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfig?
      humanAgentSideConfig;

  /// Creates a new [GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource].
  /// [agent] The name of a dialogflow virtual agent used for end user side intent detection and suggestion. Format: `projects//locations//agent`. When multiple agents are allowed in the same Dialogflow project.
  /// [humanAgentSideConfig] The Dialogflow assist configuration for human agent.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource({
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

  factory GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource(
      agent: map['agent'] as String,
      humanAgentSideConfig: map['humanAgentSideConfig'] == null
          ? null
          : GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfig
              .fromMap(
                  (map['humanAgentSideConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
