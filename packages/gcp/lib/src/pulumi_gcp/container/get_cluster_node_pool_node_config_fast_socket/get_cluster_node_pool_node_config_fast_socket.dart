// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigFastSocket {
  /// Whether or not NCCL Fast Socket is enabled
  final bool enabled;

  GetClusterNodePoolNodeConfigFastSocket({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterNodePoolNodeConfigFastSocket.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigFastSocket(
      enabled: map['enabled'] as bool,
    );
  }
}
