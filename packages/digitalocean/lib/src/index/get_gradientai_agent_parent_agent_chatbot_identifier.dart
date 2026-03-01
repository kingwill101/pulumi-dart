// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiAgentParentAgentChatbotIdentifier {
  final String chatbotId;

  /// Creates a new [GetGradientaiAgentParentAgentChatbotIdentifier].
  /// [chatbotId] Required.
  GetGradientaiAgentParentAgentChatbotIdentifier({
    required this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': chatbotId,
    };
  }

  factory GetGradientaiAgentParentAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentParentAgentChatbotIdentifier(
      chatbotId: map['chatbotId'] as String,
    );
  }
}

