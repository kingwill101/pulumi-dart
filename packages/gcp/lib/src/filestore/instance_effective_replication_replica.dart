// ignore_for_file: unused_element, unnecessary_cast

class InstanceEffectiveReplicationReplica {
  /// (Output)
  /// Output only. The timestamp of the latest replication snapshot taken on the active instance and is already replicated safely.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  final String? lastActiveSyncTime;

  /// The peer instance.
  final String? peerInstance;

  /// (Output)
  /// Output only. The replica state
  final String? state;

  /// (Output)
  /// Output only. Additional information about the replication state, if available.
  final List<String>? stateReasons;

  /// Creates a new [InstanceEffectiveReplicationReplica].
  /// [lastActiveSyncTime] (Output)
  /// [peerInstance] The peer instance.
  /// [state] (Output)
  /// [stateReasons] (Output)
  InstanceEffectiveReplicationReplica({
    this.lastActiveSyncTime,
    this.peerInstance,
    this.state,
    this.stateReasons,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final lastActiveSyncTimeValue = lastActiveSyncTime;
    if (lastActiveSyncTimeValue != null) {
      map['lastActiveSyncTime'] = lastActiveSyncTimeValue;
    }
    final peerInstanceValue = peerInstance;
    if (peerInstanceValue != null) {
      map['peerInstance'] = peerInstanceValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final stateReasonsValue = stateReasons;
    if (stateReasonsValue != null) {
      map['stateReasons'] = stateReasonsValue;
    }
    return map;
  }

  factory InstanceEffectiveReplicationReplica.fromMap(
      Map<String, dynamic> map) {
    return InstanceEffectiveReplicationReplica(
      lastActiveSyncTime: map['lastActiveSyncTime'] == null
          ? null
          : map['lastActiveSyncTime'] as String,
      peerInstance:
          map['peerInstance'] == null ? null : map['peerInstance'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      stateReasons: map['stateReasons'] == null
          ? null
          : (map['stateReasons'] as List).cast<String>(),
    );
  }
}
