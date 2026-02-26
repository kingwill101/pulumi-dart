// ignore_for_file: unused_element, unnecessary_cast

class ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigContextFilterSettings {
  /// If set to true, the last message from virtual agent (hand off message) and the message before it (trigger message of hand off) are dropped.
  final bool? dropHandoffMessages;

  /// If set to true, all messages from ivr stage are dropped.
  final bool? dropIvrMessages;

  /// If set to true, all messages from virtual agent are dropped.
  final bool? dropVirtualAgentMessages;

  ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigContextFilterSettings({
    this.dropHandoffMessages,
    this.dropIvrMessages,
    this.dropVirtualAgentMessages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dropHandoffMessagesValue = dropHandoffMessages;
    if (dropHandoffMessagesValue != null) {
      map['dropHandoffMessages'] = dropHandoffMessagesValue;
    }
    final dropIvrMessagesValue = dropIvrMessages;
    if (dropIvrMessagesValue != null) {
      map['dropIvrMessages'] = dropIvrMessagesValue;
    }
    final dropVirtualAgentMessagesValue = dropVirtualAgentMessages;
    if (dropVirtualAgentMessagesValue != null) {
      map['dropVirtualAgentMessages'] = dropVirtualAgentMessagesValue;
    }
    return map;
  }

  factory ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigContextFilterSettings.fromMap(
      Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigContextFilterSettings(
      dropHandoffMessages: map['dropHandoffMessages'] == null
          ? null
          : map['dropHandoffMessages'] as bool,
      dropIvrMessages: map['dropIvrMessages'] == null
          ? null
          : map['dropIvrMessages'] as bool,
      dropVirtualAgentMessages: map['dropVirtualAgentMessages'] == null
          ? null
          : map['dropVirtualAgentMessages'] as bool,
    );
  }
}
