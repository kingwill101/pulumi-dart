// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceEffectiveReplicationReplica {
  /// Output only. The timestamp of the latest replication snapshot taken on the active instance and is already replicated safely.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  final String lastActiveSyncTime;

  /// The peer instance.
  final String peerInstance;

  /// Output only. The replica state
  final String state;

  /// Output only. Additional information about the replication state, if available.
  final List<String> stateReasons;

  /// Creates a new [GetInstanceEffectiveReplicationReplica].
  /// [lastActiveSyncTime] Output only. The timestamp of the latest replication snapshot taken on the active instance and is already replicated safely.
  /// [peerInstance] The peer instance.
  /// [state] Output only. The replica state
  /// [stateReasons] Output only. Additional information about the replication state, if available.
  GetInstanceEffectiveReplicationReplica({
    required this.lastActiveSyncTime,
    required this.peerInstance,
    required this.state,
    required this.stateReasons,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lastActiveSyncTime'] = lastActiveSyncTime;
    map['peerInstance'] = peerInstance;
    map['state'] = state;
    map['stateReasons'] = stateReasons;
    return map;
  }

  factory GetInstanceEffectiveReplicationReplica.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceEffectiveReplicationReplica(
      lastActiveSyncTime: map['lastActiveSyncTime'] as String,
      peerInstance: map['peerInstance'] as String,
      state: map['state'] as String,
      stateReasons: (map['stateReasons'] as List).cast<String>(),
    );
  }
}
