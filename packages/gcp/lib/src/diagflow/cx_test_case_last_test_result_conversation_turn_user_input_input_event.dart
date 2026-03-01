// ignore_for_file: unused_element, unnecessary_cast

class CxTestCaseLastTestResultConversationTurnUserInputInputEvent {
  /// Name of the event.
  final String event;

  /// Creates a new [CxTestCaseLastTestResultConversationTurnUserInputInputEvent].
  /// [event] Name of the event.
  CxTestCaseLastTestResultConversationTurnUserInputInputEvent({
    required this.event,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'event': event};
  }

  factory CxTestCaseLastTestResultConversationTurnUserInputInputEvent.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxTestCaseLastTestResultConversationTurnUserInputInputEvent(
      event: map['event'] as String,
    );
  }
}
