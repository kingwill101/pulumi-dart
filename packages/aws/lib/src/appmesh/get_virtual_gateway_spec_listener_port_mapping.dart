// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualGatewaySpecListenerPortMapping {
  final int port;
  final String protocol;

  /// Creates a new [GetVirtualGatewaySpecListenerPortMapping].
  /// [port] Required.
  /// [protocol] Required.
  GetVirtualGatewaySpecListenerPortMapping({
    required this.port,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['port'] = port;
    map['protocol'] = protocol;
    return map;
  }

  factory GetVirtualGatewaySpecListenerPortMapping.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerPortMapping(
      port: map['port'] as int,
      protocol: map['protocol'] as String,
    );
  }
}
