// ignore_for_file: unused_element, unnecessary_cast

/// The configuration used for human agent side Dialogflow assist suggestion.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfig {
  /// Optional. The name of a dialogflow virtual agent used for intent detection and suggestion triggered by human agent. Format: `projects//locations//agent`.
  final String? agent;

  /// Creates a new [GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfig].
  /// [agent] Optional. The name of a dialogflow virtual agent used for intent detection and suggestion triggered by human agent. Format: `projects//locations//agent`.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfig({
    this.agent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final agentValue = agent;
    if (agentValue != null) {
      map['agent'] = agentValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfig(
      agent: map['agent'] == null ? null : map['agent'] as String,
    );
  }
}
