// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceInitialReplicationReplica {
  /// The peer instance.
  final String peerInstance;

  /// Creates a new [GetInstanceInitialReplicationReplica].
  /// [peerInstance] The peer instance.
  GetInstanceInitialReplicationReplica({required this.peerInstance});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'peerInstance': peerInstance};
  }

  factory GetInstanceInitialReplicationReplica.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInstanceInitialReplicationReplica(
      peerInstance: map['peerInstance'] as String,
    );
  }
}
