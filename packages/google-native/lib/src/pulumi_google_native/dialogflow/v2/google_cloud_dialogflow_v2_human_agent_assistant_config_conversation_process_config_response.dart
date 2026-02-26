// ignore_for_file: unused_element, unnecessary_cast

/// Config to process conversation.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfigResponse {
  /// Number of recent non-small-talk sentences to use as context for article and FAQ suggestion
  final int recentSentencesCount;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfigResponse({
    required this.recentSentencesCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['recentSentencesCount'] = recentSentencesCount;
    return map;
  }

  factory GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfigResponse(
      recentSentencesCount: map['recentSentencesCount'] as int,
    );
  }
}
