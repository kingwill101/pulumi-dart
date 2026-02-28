// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_suggestion_query_config_dialogflow_query_source_human_agent_side_config_response.dart';

/// Dialogflow source setting. Supported feature: DIALOGFLOW_ASSIST, ENTITY_EXTRACTION.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceResponse {
  /// The name of a dialogflow virtual agent used for end user side intent detection and suggestion. Format: `projects//locations//agent`. When multiple agents are allowed in the same Dialogflow project.
  final String agent;

  /// The Dialogflow assist configuration for human agent.
  final GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfigResponse
      humanAgentSideConfig;

  /// Creates a new [GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceResponse].
  /// [agent] The name of a dialogflow virtual agent used for end user side intent detection and suggestion. Format: `projects//locations//agent`. When multiple agents are allowed in the same Dialogflow project.
  /// [humanAgentSideConfig] The Dialogflow assist configuration for human agent.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceResponse({
    required this.agent,
    required this.humanAgentSideConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agent'] = agent;
    map['humanAgentSideConfig'] = humanAgentSideConfig.toMap();
    return map;
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceResponse(
      agent: map['agent'] as String,
      humanAgentSideConfig:
          GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfigResponse
              .fromMap(
                  (map['humanAgentSideConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
