// ignore_for_file: unused_element, unnecessary_cast


/// The status of a cluster and its instances.
class ClusterStatusResponseDataprocV1beta2 {
  /// Optional details of cluster's state.
  final String detail;
  /// The cluster's state.
  final String state;
  /// Time when this state was entered (see JSON representation of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  final String stateStartTime;
  /// Additional state information that includes status reported by the agent.
  final String substate;

  /// Creates a new [ClusterStatusResponseDataprocV1beta2].
  /// [detail] Optional details of cluster's state.
  /// [state] The cluster's state.
  /// [stateStartTime] Time when this state was entered (see JSON representation of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  /// [substate] Additional state information that includes status reported by the agent.
  ClusterStatusResponseDataprocV1beta2({
    required this.detail,
    required this.state,
    required this.stateStartTime,
    required this.substate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detail': detail,
      'state': state,
      'stateStartTime': stateStartTime,
      'substate': substate,
    };
  }

  factory ClusterStatusResponseDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return ClusterStatusResponseDataprocV1beta2(
      detail: map['detail'] as String,
      state: map['state'] as String,
      stateStartTime: map['stateStartTime'] as String,
      substate: map['substate'] as String,
    );
  }
}

