// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerPortMapping {
  final int port;
  final String protocol;

  GetVirtualNodeSpecListenerPortMapping({
    required this.port,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['port'] = port;
    map['protocol'] = protocol;
    return map;
  }

  factory GetVirtualNodeSpecListenerPortMapping.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerPortMapping(
      port: map['port'] as int,
      protocol: map['protocol'] as String,
    );
  }
}
