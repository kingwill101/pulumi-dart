// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerPortMapping {
  final int port;
  final String protocol;

  /// Creates a new [GetVirtualNodeSpecListenerPortMapping].
  /// [port] Required.
  /// [protocol] Required.
  GetVirtualNodeSpecListenerPortMapping({
    required this.port,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'port': port, 'protocol': protocol};
  }

  factory GetVirtualNodeSpecListenerPortMapping.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecListenerPortMapping(
      port: map['port'] as int,
      protocol: map['protocol'] as String,
    );
  }
}
