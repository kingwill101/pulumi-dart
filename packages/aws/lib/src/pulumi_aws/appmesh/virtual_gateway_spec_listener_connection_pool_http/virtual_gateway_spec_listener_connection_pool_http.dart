// ignore_for_file: unused_element, unnecessary_cast

class VirtualGatewaySpecListenerConnectionPoolHttp {
  /// Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster. Minimum value of <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
  final int maxConnections;

  /// Number of overflowing requests after <span pulumi-lang-nodejs="`maxConnections`" pulumi-lang-dotnet="`MaxConnections`" pulumi-lang-go="`maxConnections`" pulumi-lang-python="`max_connections`" pulumi-lang-yaml="`maxConnections`" pulumi-lang-java="`maxConnections`">`max_connections`</span> Envoy will queue to upstream cluster. Minimum value of <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
  final int? maxPendingRequests;

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
