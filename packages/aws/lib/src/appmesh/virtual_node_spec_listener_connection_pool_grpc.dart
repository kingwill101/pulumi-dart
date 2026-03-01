// ignore_for_file: unused_element, unnecessary_cast

class VirtualNodeSpecListenerConnectionPoolGrpc {
  /// Maximum number of inflight requests Envoy can concurrently support across hosts in upstream cluster. Minimum value of `1`.
  final int maxRequests;

  /// Creates a new [VirtualNodeSpecListenerConnectionPoolGrpc].
  /// [maxRequests] Maximum number of inflight requests Envoy can concurrently support across hosts in upstream cluster. Minimum value of `1`.
  VirtualNodeSpecListenerConnectionPoolGrpc({required this.maxRequests});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maxRequests': maxRequests};
  }

  factory VirtualNodeSpecListenerConnectionPoolGrpc.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualNodeSpecListenerConnectionPoolGrpc(
      maxRequests: map['maxRequests'] as int,
    );
  }
}
