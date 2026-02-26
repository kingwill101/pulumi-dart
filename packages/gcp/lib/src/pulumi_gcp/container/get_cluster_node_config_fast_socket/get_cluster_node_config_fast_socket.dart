// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigFastSocket {
  /// Whether or not NCCL Fast Socket is enabled
  final bool enabled;

  GetClusterNodeConfigFastSocket({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterNodeConfigFastSocket.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigFastSocket(
      enabled: map['enabled'] as bool,
    );
  }
}
