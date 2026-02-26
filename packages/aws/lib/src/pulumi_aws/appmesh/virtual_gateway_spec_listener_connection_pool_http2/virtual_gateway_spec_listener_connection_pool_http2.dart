// ignore_for_file: unused_element, unnecessary_cast

class VirtualGatewaySpecListenerConnectionPoolHttp2 {
  /// Maximum number of inflight requests Envoy can concurrently support across hosts in upstream cluster. Minimum value of <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
  final int maxRequests;

  VirtualGatewaySpecListenerConnectionPoolHttp2({
    required this.maxRequests,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxRequests'] = maxRequests;
    return map;
  }

  factory VirtualGatewaySpecListenerConnectionPoolHttp2.fromMap(
      Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerConnectionPoolHttp2(
      maxRequests: map['maxRequests'] as int,
    );
  }
}
