// ignore_for_file: unused_element, unnecessary_cast

/// Config to process conversation.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfig {
  /// Number of recent non-small-talk sentences to use as context for article and FAQ suggestion
  final int? recentSentencesCount;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfig({
    this.recentSentencesCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final recentSentencesCountValue = recentSentencesCount;
    if (recentSentencesCountValue != null) {
      map['recentSentencesCount'] = recentSentencesCountValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfig(
      recentSentencesCount: map['recentSentencesCount'] == null
          ? null
          : map['recentSentencesCount'] as int,
    );
  }
}
