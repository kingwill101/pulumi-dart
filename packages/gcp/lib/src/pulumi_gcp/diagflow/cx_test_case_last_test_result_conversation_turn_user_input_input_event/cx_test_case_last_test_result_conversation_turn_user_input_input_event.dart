// ignore_for_file: unused_element, unnecessary_cast

class CxTestCaseLastTestResultConversationTurnUserInputInputEvent {
  /// Name of the event.
  final String event;

  CxTestCaseLastTestResultConversationTurnUserInputInputEvent({
    required this.event,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['event'] = event;
    return map;
  }

  factory CxTestCaseLastTestResultConversationTurnUserInputInputEvent.fromMap(
      Map<String, dynamic> map) {
    return CxTestCaseLastTestResultConversationTurnUserInputInputEvent(
      event: map['event'] as String,
    );
  }
}
