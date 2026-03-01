// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiAgentsByOpenaiApiKeyAgentParentAgentChatbotIdentifier {
  final String chatbotId;

  /// Creates a new [GetGenaiAgentsByOpenaiApiKeyAgentParentAgentChatbotIdentifier].
  /// [chatbotId] Required.
  GetGenaiAgentsByOpenaiApiKeyAgentParentAgentChatbotIdentifier({
    required this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': chatbotId,
    };
  }

  factory GetGenaiAgentsByOpenaiApiKeyAgentParentAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsByOpenaiApiKeyAgentParentAgentChatbotIdentifier(
      chatbotId: map['chatbotId'] as String,
    );
  }
}

