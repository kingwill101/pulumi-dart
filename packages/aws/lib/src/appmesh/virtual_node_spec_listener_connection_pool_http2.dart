// ignore_for_file: unused_element, unnecessary_cast

class VirtualNodeSpecListenerConnectionPoolHttp2 {
  /// Maximum number of inflight requests Envoy can concurrently support across hosts in upstream cluster. Minimum value of `1`.
  final int maxRequests;

  /// Creates a new [VirtualNodeSpecListenerConnectionPoolHttp2].
  /// [maxRequests] Maximum number of inflight requests Envoy can concurrently support across hosts in upstream cluster. Minimum value of `1`.
  VirtualNodeSpecListenerConnectionPoolHttp2({required this.maxRequests});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maxRequests': maxRequests};
  }

  factory VirtualNodeSpecListenerConnectionPoolHttp2.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualNodeSpecListenerConnectionPoolHttp2(
      maxRequests: map['maxRequests'] as int,
    );
  }
}
