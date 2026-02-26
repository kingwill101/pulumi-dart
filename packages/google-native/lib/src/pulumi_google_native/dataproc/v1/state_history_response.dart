// ignore_for_file: unused_element, unnecessary_cast

/// Historical state information.
class StateHistoryResponse {
  /// The state of the batch at this point in history.
  final String state;

  /// Details about the state at this point in history.
  final String stateMessage;

  /// The time when the batch entered the historical state.
  final String stateStartTime;

  StateHistoryResponse({
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

  factory StateHistoryResponse.fromMap(Map<String, dynamic> map) {
    return StateHistoryResponse(
      state: map['state'] as String,
      stateMessage: map['stateMessage'] as String,
      stateStartTime: map['stateStartTime'] as String,
    );
  }
}
