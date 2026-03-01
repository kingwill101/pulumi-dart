// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiAgentChatbotIdentifier {
  /// Chatbot ID
  final String? chatbotId;

  /// Creates a new [GetGradientaiAgentChatbotIdentifier].
  /// [chatbotId] Chatbot ID
  GetGradientaiAgentChatbotIdentifier({
    this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': ?chatbotId,
    };
  }

  factory GetGradientaiAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentChatbotIdentifier(
      chatbotId: map['chatbotId'] == null ? null : map['chatbotId'] as String,
    );
  }
}

