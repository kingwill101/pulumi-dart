// ignore_for_file: unused_element, unnecessary_cast

class VirtualNodeSpecListenerConnectionPoolHttp {
  /// Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster. Minimum value of `1`.
  final int maxConnections;

  /// Number of overflowing requests after `max_connections` Envoy will queue to upstream cluster. Minimum value of `1`.
  final int? maxPendingRequests;

  /// Creates a new [VirtualNodeSpecListenerConnectionPoolHttp].
  /// [maxConnections] Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster. Minimum value of `1`.
  /// [maxPendingRequests] Number of overflowing requests after `max_connections` Envoy will queue to upstream cluster. Minimum value of `1`.
  VirtualNodeSpecListenerConnectionPoolHttp({
    required this.maxConnections,
    this.maxPendingRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConnections': maxConnections,
      'maxPendingRequests': ?maxPendingRequests,
    };
  }

  factory VirtualNodeSpecListenerConnectionPoolHttp.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualNodeSpecListenerConnectionPoolHttp(
      maxConnections: map['maxConnections'] as int,
      maxPendingRequests: map['maxPendingRequests'] == null
          ? null
          : map['maxPendingRequests'] as int,
    );
  }
}
