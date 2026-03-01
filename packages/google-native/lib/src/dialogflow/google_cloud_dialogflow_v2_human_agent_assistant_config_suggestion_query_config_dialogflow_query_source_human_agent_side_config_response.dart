// ignore_for_file: unused_element, unnecessary_cast

/// The configuration used for human agent side Dialogflow assist suggestion.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfigResponse {
  /// Optional. The name of a dialogflow virtual agent used for intent detection and suggestion triggered by human agent. Format: `projects//locations//agent`.
  final String agent;

  /// Creates a new [GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfigResponse].
  /// [agent] Optional. The name of a dialogflow virtual agent used for intent detection and suggestion triggered by human agent. Format: `projects//locations//agent`.
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfigResponse({
    required this.agent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'agent': agent};
  }

  factory GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfigResponse(
      agent: map['agent'] as String,
    );
  }
}
