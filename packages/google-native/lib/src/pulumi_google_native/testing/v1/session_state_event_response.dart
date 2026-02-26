// ignore_for_file: unused_element, unnecessary_cast

/// A message encapsulating a series of Session states and the time that the DeviceSession first entered those states.
class SessionStateEventResponse {
  /// The time that the session_state first encountered that state.
  final String eventTime;

  /// The session_state tracked by this event
  final String sessionState;

  /// A human-readable message to explain the state.
  final String stateMessage;

  SessionStateEventResponse({
    required this.eventTime,
    required this.sessionState,
    required this.stateMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['eventTime'] = eventTime;
    map['sessionState'] = sessionState;
    map['stateMessage'] = stateMessage;
    return map;
  }

  factory SessionStateEventResponse.fromMap(Map<String, dynamic> map) {
    return SessionStateEventResponse(
      eventTime: map['eventTime'] as String,
      sessionState: map['sessionState'] as String,
      stateMessage: map['stateMessage'] as String,
    );
  }
}
