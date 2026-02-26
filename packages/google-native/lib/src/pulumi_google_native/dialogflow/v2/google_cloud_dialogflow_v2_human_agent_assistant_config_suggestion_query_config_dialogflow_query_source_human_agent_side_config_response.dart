// ignore_for_file: unused_element, unnecessary_cast

/// The configuration used for human agent side Dialogflow assist suggestion.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfigResponse {
  /// Optional. The name of a dialogflow virtual agent used for intent detection and suggestion triggered by human agent. Format: `projects//locations//agent`.
  final String agent;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfigResponse({
    required this.agent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agent'] = agent;
    return map;
  }

  factory GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfigResponse(
      agent: map['agent'] as String,
    );
  }
}
