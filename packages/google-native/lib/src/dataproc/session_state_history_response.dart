// ignore_for_file: unused_element, unnecessary_cast

/// Historical state information.
class SessionStateHistoryResponse {
  /// The state of the session at this point in the session history.
  final String state;

  /// Details about the state at this point in the session history.
  final String stateMessage;

  /// The time when the session entered the historical state.
  final String stateStartTime;

  /// Creates a new [SessionStateHistoryResponse].
  /// [state] The state of the session at this point in the session history.
  /// [stateMessage] Details about the state at this point in the session history.
  /// [stateStartTime] The time when the session entered the historical state.
  SessionStateHistoryResponse({
    required this.state,
    required this.stateMessage,
    required this.stateStartTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['state'] = state;
    map['stateMessage'] = stateMessage;
    map['stateStartTime'] = stateStartTime;
    return map;
  }

  factory SessionStateHistoryResponse.fromMap(Map<String, dynamic> map) {
    return SessionStateHistoryResponse(
      state: map['state'] as String,
      stateMessage: map['stateMessage'] as String,
      stateStartTime: map['stateStartTime'] as String,
    );
  }
}
