// ignore_for_file: unused_element, unnecessary_cast

/// Dataproc job status.
class JobStatusResponse3 {
  /// Optional. Output only. Job state details, such as an error description if the state is ERROR.
  final String details;

  /// A state message specifying the overall job state.
  final String state;

  /// The time when this state was entered.
  final String stateStartTime;

  /// Additional state information, which includes status reported by the agent.
  final String substate;

  JobStatusResponse3({
    required this.details,
    required this.state,
    required this.stateStartTime,
    required this.substate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['details'] = details;
    map['state'] = state;
    map['stateStartTime'] = stateStartTime;
    map['substate'] = substate;
    return map;
  }

  factory JobStatusResponse3.fromMap(Map<String, dynamic> map) {
    return JobStatusResponse3(
      details: map['details'] as String,
      state: map['state'] as String,
      stateStartTime: map['stateStartTime'] as String,
      substate: map['substate'] as String,
    );
  }
}
