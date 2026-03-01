// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualGatewaySpecListenerConnectionPoolHttp2 {
  final int maxRequests;

  /// Creates a new [GetVirtualGatewaySpecListenerConnectionPoolHttp2].
  /// [maxRequests] Required.
  GetVirtualGatewaySpecListenerConnectionPoolHttp2({required this.maxRequests});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maxRequests': maxRequests};
  }

  factory GetVirtualGatewaySpecListenerConnectionPoolHttp2.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualGatewaySpecListenerConnectionPoolHttp2(
      maxRequests: map['maxRequests'] as int,
    );
  }
}
