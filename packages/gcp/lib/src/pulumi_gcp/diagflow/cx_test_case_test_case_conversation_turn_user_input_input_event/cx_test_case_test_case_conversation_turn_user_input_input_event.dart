// ignore_for_file: unused_element, unnecessary_cast

class CxTestCaseTestCaseConversationTurnUserInputInputEvent {
  /// Name of the event.
  final String event;

  CxTestCaseTestCaseConversationTurnUserInputInputEvent({
    required this.event,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['event'] = event;
    return map;
  }

  factory CxTestCaseTestCaseConversationTurnUserInputInputEvent.fromMap(
      Map<String, dynamic> map) {
    return CxTestCaseTestCaseConversationTurnUserInputInputEvent(
      event: map['event'] as String,
    );
  }
}
