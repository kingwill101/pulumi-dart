// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualGatewaySpecListenerConnectionPoolGrpc {
  final int maxRequests;

  GetVirtualGatewaySpecListenerConnectionPoolGrpc({
    required this.maxRequests,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxRequests'] = maxRequests;
    return map;
  }

  factory GetVirtualGatewaySpecListenerConnectionPoolGrpc.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerConnectionPoolGrpc(
      maxRequests: map['maxRequests'] as int,
    );
  }
}
