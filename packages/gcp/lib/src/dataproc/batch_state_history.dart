// ignore_for_file: unused_element, unnecessary_cast

class BatchStateHistory {
  /// (Output)
  /// The state of the batch at this point in history. For possible values, see the [API documentation](https://cloud.google.com/dataproc-serverless/docs/reference/rest/v1/projects.locations.batches#State).
  final String? state;

  /// (Output)
  /// Details about the state at this point in history.
  final String? stateMessage;

  /// (Output)
  /// The time when the batch entered the historical state.
  final String? stateStartTime;

  /// Creates a new [BatchStateHistory].
  /// [state] (Output)
  /// [stateMessage] (Output)
  /// [stateStartTime] (Output)
  BatchStateHistory({
    this.state,
    this.stateMessage,
    this.stateStartTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final stateMessageValue = stateMessage;
    if (stateMessageValue != null) {
      map['stateMessage'] = stateMessageValue;
    }
    final stateStartTimeValue = stateStartTime;
    if (stateStartTimeValue != null) {
      map['stateStartTime'] = stateStartTimeValue;
    }
    return map;
  }

  factory BatchStateHistory.fromMap(Map<String, dynamic> map) {
    return BatchStateHistory(
      state: map['state'] == null ? null : map['state'] as String,
      stateMessage:
          map['stateMessage'] == null ? null : map['stateMessage'] as String,
      stateStartTime: map['stateStartTime'] == null
          ? null
          : map['stateStartTime'] as String,
    );
  }
}
