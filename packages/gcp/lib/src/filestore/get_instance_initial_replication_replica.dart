// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceInitialReplicationReplica {
  /// The peer instance.
  final String peerInstance;

  /// Creates a new [GetInstanceInitialReplicationReplica].
  /// [peerInstance] The peer instance.
  GetInstanceInitialReplicationReplica({
    required this.peerInstance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['peerInstance'] = peerInstance;
    return map;
  }

  factory GetInstanceInitialReplicationReplica.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceInitialReplicationReplica(
      peerInstance: map['peerInstance'] as String,
    );
  }
}
