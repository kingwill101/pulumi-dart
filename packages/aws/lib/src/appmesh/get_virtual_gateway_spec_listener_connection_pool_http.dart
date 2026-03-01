// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualGatewaySpecListenerConnectionPoolHttp {
  final int maxConnections;
  final int maxPendingRequests;

  /// Creates a new [GetVirtualGatewaySpecListenerConnectionPoolHttp].
  /// [maxConnections] Required.
  /// [maxPendingRequests] Required.
  GetVirtualGatewaySpecListenerConnectionPoolHttp({
    required this.maxConnections,
    required this.maxPendingRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConnections': maxConnections,
      'maxPendingRequests': maxPendingRequests,
    };
  }

  factory GetVirtualGatewaySpecListenerConnectionPoolHttp.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualGatewaySpecListenerConnectionPoolHttp(
      maxConnections: map['maxConnections'] as int,
      maxPendingRequests: map['maxPendingRequests'] as int,
    );
  }
}
