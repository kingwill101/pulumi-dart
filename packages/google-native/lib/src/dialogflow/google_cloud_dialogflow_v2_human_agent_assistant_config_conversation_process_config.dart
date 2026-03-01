// ignore_for_file: unused_element, unnecessary_cast

/// Config to process conversation.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfig {
  /// Number of recent non-small-talk sentences to use as context for article and FAQ suggestion
  final int? recentSentencesCount;

  /// Creates a new [GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfig].
  /// [recentSentencesCount] Number of recent non-small-talk sentences to use as context for article and FAQ suggestion
  GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfig({
    this.recentSentencesCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'recentSentencesCount': ?recentSentencesCount};
  }

  factory GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfig(
      recentSentencesCount: map['recentSentencesCount'] == null
          ? null
          : map['recentSentencesCount'] as int,
    );
  }
}
