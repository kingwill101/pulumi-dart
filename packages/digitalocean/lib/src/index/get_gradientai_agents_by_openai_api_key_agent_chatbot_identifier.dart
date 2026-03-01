// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiAgentsByOpenaiApiKeyAgentChatbotIdentifier {
  /// Chatbot ID
  final String? chatbotId;

  /// Creates a new [GetGradientaiAgentsByOpenaiApiKeyAgentChatbotIdentifier].
  /// [chatbotId] Chatbot ID
  GetGradientaiAgentsByOpenaiApiKeyAgentChatbotIdentifier({
    this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': ?chatbotId,
    };
  }

  factory GetGradientaiAgentsByOpenaiApiKeyAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsByOpenaiApiKeyAgentChatbotIdentifier(
      chatbotId: map['chatbotId'] == null ? null : map['chatbotId'] as String,
    );
  }
}

