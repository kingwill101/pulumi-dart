// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualRouterSpecListenerPortMapping {
  final int port;
  final String protocol;

  /// Creates a new [GetVirtualRouterSpecListenerPortMapping].
  /// [port] Required.
  /// [protocol] Required.
  GetVirtualRouterSpecListenerPortMapping({
    required this.port,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['port'] = port;
    map['protocol'] = protocol;
    return map;
  }

  factory GetVirtualRouterSpecListenerPortMapping.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualRouterSpecListenerPortMapping(
      port: map['port'] as int,
      protocol: map['protocol'] as String,
    );
  }
}
