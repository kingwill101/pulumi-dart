// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_human_agent_assistant_config_suggestion_query_config_dialogflow_query_source_human_agent_side_config_response.dart';

/// Dialogflow source setting. Supported feature: DIALOGFLOW_ASSIST.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceResponse {
  /// The name of a Dialogflow virtual agent used for end user side intent detection and suggestion. Format: `projects//locations//agent`. When multiple agents are allowed in the same Dialogflow project.
  final String agent;
  /// Optional. The Dialogflow assist configuration for human agent.
  final GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfigResponse humanAgentSideConfig;

  /// Creates a new [GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceResponse].
  /// [agent] The name of a Dialogflow virtual agent used for end user side intent detection and suggestion. Format: `projects//locations//agent`. When multiple agents are allowed in the same Dialogflow project.
  /// [humanAgentSideConfig] Optional. The Dialogflow assist configuration for human agent.
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceResponse({
    required this.agent,
    required this.humanAgentSideConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agent': agent,
      'humanAgentSideConfig': humanAgentSideConfig.toMap(),
    };
  }

  factory GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceResponse(
      agent: map['agent'] as String,
      humanAgentSideConfig: GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfigResponse.fromMap((map['humanAgentSideConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

