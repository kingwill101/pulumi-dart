// ignore_for_file: unused_element, unnecessary_cast

/// The status of a cluster and its instances.
class ClusterStatusResponse {
  /// Optional. Output only. Details of cluster's state.
  final String detail;

  /// The cluster's state.
  final String state;

  /// Time when this state was entered (see JSON representation of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  final String stateStartTime;

  /// Additional state information that includes status reported by the agent.
  final String substate;

  /// Creates a new [ClusterStatusResponse].
  /// [detail] Optional. Output only. Details of cluster's state.
  /// [state] The cluster's state.
  /// [stateStartTime] Time when this state was entered (see JSON representation of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  /// [substate] Additional state information that includes status reported by the agent.
  ClusterStatusResponse({
    required this.detail,
    required this.state,
    required this.stateStartTime,
    required this.substate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['detail'] = detail;
    map['state'] = state;
    map['stateStartTime'] = stateStartTime;
    map['substate'] = substate;
    return map;
  }

  factory ClusterStatusResponse.fromMap(Map<String, dynamic> map) {
    return ClusterStatusResponse(
      detail: map['detail'] as String,
      state: map['state'] as String,
      stateStartTime: map['stateStartTime'] as String,
      substate: map['substate'] as String,
    );
  }
}
