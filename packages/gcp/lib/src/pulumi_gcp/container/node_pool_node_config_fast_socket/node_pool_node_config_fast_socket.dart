// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNodeConfigFastSocket {
  /// Whether or not NCCL Fast Socket is enabled
  final bool enabled;

  NodePoolNodeConfigFastSocket({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory NodePoolNodeConfigFastSocket.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigFastSocket(
      enabled: map['enabled'] as bool,
    );
  }
}
