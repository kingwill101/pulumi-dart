// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeConfigFastSocket {
  /// Whether or not the NCCL Fast Socket is enabled
  final bool enabled;

  ClusterNodePoolNodeConfigFastSocket({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterNodePoolNodeConfigFastSocket.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigFastSocket(
      enabled: map['enabled'] as bool,
    );
  }
}
