/// The state of the Conversation.
enum ConversationState {
  stateUnspecified("STATE_UNSPECIFIED"),
  inProgress("IN_PROGRESS"),
  completed("COMPLETED");

  const ConversationState(this.value);
  final String value;

  static ConversationState fromValue(String value) {
    for (final item in ConversationState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConversationState value: $value');
  }
}
