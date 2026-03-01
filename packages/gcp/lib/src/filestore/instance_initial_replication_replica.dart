// ignore_for_file: unused_element, unnecessary_cast

class InstanceInitialReplicationReplica {
  /// The peer instance.
  final String peerInstance;

  /// Creates a new [InstanceInitialReplicationReplica].
  /// [peerInstance] The peer instance.
  InstanceInitialReplicationReplica({required this.peerInstance});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'peerInstance': peerInstance};
  }

  factory InstanceInitialReplicationReplica.fromMap(Map<String, dynamic> map) {
    return InstanceInitialReplicationReplica(
      peerInstance: map['peerInstance'] as String,
    );
  }
}
