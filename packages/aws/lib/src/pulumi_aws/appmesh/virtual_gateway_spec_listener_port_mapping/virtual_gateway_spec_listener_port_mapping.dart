// ignore_for_file: unused_element, unnecessary_cast

class VirtualGatewaySpecListenerPortMapping {
  /// Port used for the port mapping.
  final int port;

  /// Protocol used for the port mapping. Valid values are `http`, `http2`, `tcp` and `grpc`.
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
