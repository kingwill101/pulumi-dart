// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigFastSocket {
  /// Whether or not NCCL Fast Socket is enabled
  final bool enabled;

  /// Creates a new [GetClusterNodeConfigFastSocket].
  /// [enabled] Whether or not NCCL Fast Socket is enabled
  GetClusterNodeConfigFastSocket({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetClusterNodeConfigFastSocket.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigFastSocket(enabled: map['enabled'] as bool);
  }
}
