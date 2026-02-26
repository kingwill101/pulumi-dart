/// The state of the Conversation.
enum ConversationState2 {
  stateUnspecified("STATE_UNSPECIFIED"),
  inProgress("IN_PROGRESS"),
  completed("COMPLETED");

  const ConversationState2(this.value);
  final String value;

  static ConversationState2 fromValue(String value) {
    for (final item in ConversationState2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConversationState2 value: $value');
  }
}
