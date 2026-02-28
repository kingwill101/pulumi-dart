// ignore_for_file: unused_element, unnecessary_cast


/// Settings that determine how to filter recent conversation context when generating suggestions.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettingsResponse {
  /// If set to true, the last message from virtual agent (hand off message) and the message before it (trigger message of hand off) are dropped.
  final bool dropHandoffMessages;
  /// If set to true, all messages from ivr stage are dropped.
  final bool dropIvrMessages;
  /// If set to true, all messages from virtual agent are dropped.
  final bool dropVirtualAgentMessages;

  /// Creates a new [GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettingsResponse].
  /// [dropHandoffMessages] If set to true, the last message from virtual agent (hand off message) and the message before it (trigger message of hand off) are dropped.
  /// [dropIvrMessages] If set to true, all messages from ivr stage are dropped.
  /// [dropVirtualAgentMessages] If set to true, all messages from virtual agent are dropped.
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettingsResponse({
    required this.dropHandoffMessages,
    required this.dropIvrMessages,
    required this.dropVirtualAgentMessages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropHandoffMessages': dropHandoffMessages,
      'dropIvrMessages': dropIvrMessages,
      'dropVirtualAgentMessages': dropVirtualAgentMessages,
    };
  }

  factory GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettingsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettingsResponse(
      dropHandoffMessages: map['dropHandoffMessages'] as bool,
      dropIvrMessages: map['dropIvrMessages'] as bool,
      dropVirtualAgentMessages: map['dropVirtualAgentMessages'] as bool,
    );
  }
}

