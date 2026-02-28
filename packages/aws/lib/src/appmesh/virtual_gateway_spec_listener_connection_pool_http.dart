// ignore_for_file: unused_element, unnecessary_cast

class VirtualGatewaySpecListenerConnectionPoolHttp {
  /// Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster. Minimum value of `1`.
  final int maxConnections;

  /// Number of overflowing requests after `max_connections` Envoy will queue to upstream cluster. Minimum value of `1`.
  final int? maxPendingRequests;

  /// Creates a new [VirtualGatewaySpecListenerConnectionPoolHttp].
  /// [maxConnections] Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster. Minimum value of `1`.
  /// [maxPendingRequests] Number of overflowing requests after `max_connections` Envoy will queue to upstream cluster. Minimum value of `1`.
  VirtualGatewaySpecListenerConnectionPoolHttp({
    required this.maxConnections,
    this.maxPendingRequests,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxConnections'] = maxConnections;
    final maxPendingRequestsValue = maxPendingRequests;
    if (maxPendingRequestsValue != null) {
      map['maxPendingRequests'] = maxPendingRequestsValue;
    }
    return map;
  }

  factory VirtualGatewaySpecListenerConnectionPoolHttp.fromMap(
      Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerConnectionPoolHttp(
      maxConnections: map['maxConnections'] as int,
      maxPendingRequests: map['maxPendingRequests'] == null
          ? null
          : map['maxPendingRequests'] as int,
    );
  }
}
