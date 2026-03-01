// ignore_for_file: unused_element, unnecessary_cast

/// Historical state information.
class StateHistoryResponse {
  /// The state of the batch at this point in history.
  final String state;

  /// Details about the state at this point in history.
  final String stateMessage;

  /// The time when the batch entered the historical state.
  final String stateStartTime;

  /// Creates a new [StateHistoryResponse].
  /// [state] The state of the batch at this point in history.
  /// [stateMessage] Details about the state at this point in history.
  /// [stateStartTime] The time when the batch entered the historical state.
  StateHistoryResponse({
    required this.state,
    required this.stateMessage,
    required this.stateStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
      'stateMessage': stateMessage,
      'stateStartTime': stateStartTime,
    };
  }

  factory StateHistoryResponse.fromMap(Map<String, dynamic> map) {
    return StateHistoryResponse(
      state: map['state'] as String,
      stateMessage: map['stateMessage'] as String,
      stateStartTime: map['stateStartTime'] as String,
    );
  }
}
