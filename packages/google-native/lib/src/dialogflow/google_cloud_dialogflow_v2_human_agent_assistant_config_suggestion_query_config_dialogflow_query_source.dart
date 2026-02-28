// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_human_agent_assistant_config_suggestion_query_config_dialogflow_query_source_human_agent_side_config.dart';

/// Dialogflow source setting. Supported feature: DIALOGFLOW_ASSIST.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource {
  /// The name of a Dialogflow virtual agent used for end user side intent detection and suggestion. Format: `projects//locations//agent`. When multiple agents are allowed in the same Dialogflow project.
  final String agent;
  /// Optional. The Dialogflow assist configuration for human agent.
  final GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfig? humanAgentSideConfig;

  /// Creates a new [GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource].
  /// [agent] The name of a Dialogflow virtual agent used for end user side intent detection and suggestion. Format: `projects//locations//agent`. When multiple agents are allowed in the same Dialogflow project.
  /// [humanAgentSideConfig] Optional. The Dialogflow assist configuration for human agent.
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource({
    required this.agent,
    this.humanAgentSideConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agent': agent,
      'humanAgentSideConfig': ?humanAgentSideConfig == null ? null : humanAgentSideConfig!.toMap(),
    };
  }

  factory GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource(
      agent: map['agent'] as String,
      humanAgentSideConfig: map['humanAgentSideConfig'] == null ? null : GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfig.fromMap((map['humanAgentSideConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

