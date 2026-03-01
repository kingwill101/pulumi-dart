// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiAgentsAgentParentAgentChatbotIdentifier {
  final String chatbotId;

  /// Creates a new [GetGradientaiAgentsAgentParentAgentChatbotIdentifier].
  /// [chatbotId] Required.
  GetGradientaiAgentsAgentParentAgentChatbotIdentifier({
    required this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': chatbotId,
    };
  }

  factory GetGradientaiAgentsAgentParentAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsAgentParentAgentChatbotIdentifier(
      chatbotId: map['chatbotId'] as String,
    );
  }
}

