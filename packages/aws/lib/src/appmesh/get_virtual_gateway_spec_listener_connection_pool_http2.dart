// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualGatewaySpecListenerConnectionPoolHttp2 {
  final int maxRequests;

  /// Creates a new [GetVirtualGatewaySpecListenerConnectionPoolHttp2].
  /// [maxRequests] Required.
  GetVirtualGatewaySpecListenerConnectionPoolHttp2({
    required this.maxRequests,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxRequests'] = maxRequests;
    return map;
  }

  factory GetVirtualGatewaySpecListenerConnectionPoolHttp2.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerConnectionPoolHttp2(
      maxRequests: map['maxRequests'] as int,
    );
  }
}
