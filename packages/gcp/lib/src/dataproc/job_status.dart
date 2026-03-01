// ignore_for_file: unused_element, unnecessary_cast


class JobStatus {
  /// Optional job state details, such as an error description if the state is ERROR.
  final String? details;
  /// A state message specifying the overall job state.
  final String? state;
  /// The time when this state was entered.
  final String? stateStartTime;
  /// Additional state information, which includes status reported by the agent.
  final String? substate;

  /// Creates a new [JobStatus].
  /// [details] Optional job state details, such as an error description if the state is ERROR.
  /// [state] A state message specifying the overall job state.
  /// [stateStartTime] The time when this state was entered.
  /// [substate] Additional state information, which includes status reported by the agent.
  JobStatus({
    this.details,
    this.state,
    this.stateStartTime,
    this.substate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details,
      'state': ?state,
      'stateStartTime': ?stateStartTime,
      'substate': ?substate,
    };
  }

  factory JobStatus.fromMap(Map<String, dynamic> map) {
    return JobStatus(
      details: map['details'] == null ? null : map['details'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      stateStartTime: map['stateStartTime'] == null ? null : map['stateStartTime'] as String,
      substate: map['substate'] == null ? null : map['substate'] as String,
    );
  }
}

