// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodeConfigFastSocket {
  /// Whether or not the NCCL Fast Socket is enabled
  final bool enabled;

  ClusterNodeConfigFastSocket({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterNodeConfigFastSocket.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigFastSocket(
      enabled: map['enabled'] as bool,
    );
  }
}
