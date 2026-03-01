// ignore_for_file: unused_element, unnecessary_cast


class GenaiAgentParentAgentChatbotIdentifier {
  final String? chatbotId;

  /// Creates a new [GenaiAgentParentAgentChatbotIdentifier].
  /// [chatbotId] Optional.
  GenaiAgentParentAgentChatbotIdentifier({
    this.chatbotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatbotId': ?chatbotId,
    };
  }

  factory GenaiAgentParentAgentChatbotIdentifier.fromMap(Map<String, dynamic> map) {
    return GenaiAgentParentAgentChatbotIdentifier(
      chatbotId: map['chatbotId'] == null ? null : map['chatbotId'] as String,
    );
  }
}

