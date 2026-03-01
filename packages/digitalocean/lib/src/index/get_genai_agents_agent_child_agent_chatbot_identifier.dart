// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiAgentsAgentChildAgentChatbotIdentifier {
  final String chatbotId;

  /// Creates a new [GetGenaiAgentsAgentChildAgentChatbotIdentifier].
  /// [chatbotId] Required.
  GetGenaiAgentsAgentChildAgentChatbotIdentifier({
    required this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': chatbotId,
    };
  }

  factory GetGenaiAgentsAgentChildAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsAgentChildAgentChatbotIdentifier(
      chatbotId: map['chatbotId'] as String,
    );
  }
}

