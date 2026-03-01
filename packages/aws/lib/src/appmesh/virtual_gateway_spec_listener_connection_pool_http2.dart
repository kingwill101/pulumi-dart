// ignore_for_file: unused_element, unnecessary_cast

class VirtualGatewaySpecListenerConnectionPoolHttp2 {
  /// Maximum number of inflight requests Envoy can concurrently support across hosts in upstream cluster. Minimum value of `1`.
  final int maxRequests;

  /// Creates a new [VirtualGatewaySpecListenerConnectionPoolHttp2].
  /// [maxRequests] Maximum number of inflight requests Envoy can concurrently support across hosts in upstream cluster. Minimum value of `1`.
  VirtualGatewaySpecListenerConnectionPoolHttp2({required this.maxRequests});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maxRequests': maxRequests};
  }

  factory VirtualGatewaySpecListenerConnectionPoolHttp2.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualGatewaySpecListenerConnectionPoolHttp2(
      maxRequests: map['maxRequests'] as int,
    );
  }
}
