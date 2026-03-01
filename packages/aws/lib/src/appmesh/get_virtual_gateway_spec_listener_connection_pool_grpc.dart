// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualGatewaySpecListenerConnectionPoolGrpc {
  final int maxRequests;

  /// Creates a new [GetVirtualGatewaySpecListenerConnectionPoolGrpc].
  /// [maxRequests] Required.
  GetVirtualGatewaySpecListenerConnectionPoolGrpc({required this.maxRequests});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maxRequests': maxRequests};
  }

  factory GetVirtualGatewaySpecListenerConnectionPoolGrpc.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualGatewaySpecListenerConnectionPoolGrpc(
      maxRequests: map['maxRequests'] as int,
    );
  }
}
