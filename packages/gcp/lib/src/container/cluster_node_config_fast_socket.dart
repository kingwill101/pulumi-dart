// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodeConfigFastSocket {
  /// Whether or not the NCCL Fast Socket is enabled
  final bool enabled;

  /// Creates a new [ClusterNodeConfigFastSocket].
  /// [enabled] Whether or not the NCCL Fast Socket is enabled
  ClusterNodeConfigFastSocket({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory ClusterNodeConfigFastSocket.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigFastSocket(enabled: map['enabled'] as bool);
  }
}
