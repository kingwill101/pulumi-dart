// ignore_for_file: unused_element, unnecessary_cast

class VirtualGatewaySpecListenerPortMapping {
  /// Port used for the port mapping.
  final int port;

  /// Protocol used for the port mapping. Valid values are <span pulumi-lang-nodejs="`http`" pulumi-lang-dotnet="`Http`" pulumi-lang-go="`http`" pulumi-lang-python="`http`" pulumi-lang-yaml="`http`" pulumi-lang-java="`http`">`http`</span>, <span pulumi-lang-nodejs="`http2`" pulumi-lang-dotnet="`Http2`" pulumi-lang-go="`http2`" pulumi-lang-python="`http2`" pulumi-lang-yaml="`http2`" pulumi-lang-java="`http2`">`http2`</span>, <span pulumi-lang-nodejs="`tcp`" pulumi-lang-dotnet="`Tcp`" pulumi-lang-go="`tcp`" pulumi-lang-python="`tcp`" pulumi-lang-yaml="`tcp`" pulumi-lang-java="`tcp`">`tcp`</span> and <span pulumi-lang-nodejs="`grpc`" pulumi-lang-dotnet="`Grpc`" pulumi-lang-go="`grpc`" pulumi-lang-python="`grpc`" pulumi-lang-yaml="`grpc`" pulumi-lang-java="`grpc`">`grpc`</span>.
  final String protocol;

  VirtualGatewaySpecListenerPortMapping({
    required this.port,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['port'] = port;
    map['protocol'] = protocol;
    return map;
  }

  factory VirtualGatewaySpecListenerPortMapping.fromMap(
      Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerPortMapping(
      port: map['port'] as int,
      protocol: map['protocol'] as String,
    );
  }
}
