// ignore_for_file: unused_element, unnecessary_cast

class InstanceInitialReplicationReplica {
  /// The peer instance.
  final String peerInstance;

  InstanceInitialReplicationReplica({
    required this.peerInstance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['peerInstance'] = peerInstance;
    return map;
  }

  factory InstanceInitialReplicationReplica.fromMap(Map<String, dynamic> map) {
    return InstanceInitialReplicationReplica(
      peerInstance: map['peerInstance'] as String,
    );
  }
}
