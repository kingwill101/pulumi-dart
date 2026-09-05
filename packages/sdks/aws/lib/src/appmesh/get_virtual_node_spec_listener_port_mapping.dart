// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerPortMapping {
  /// Port used for the port mapping.
  final pulumi.Input<int> port;
  /// Protocol used for the port mapping.
  final pulumi.Input<String> protocol;

  /// Creates a new [GetVirtualNodeSpecListenerPortMapping].
  /// [port] Port used for the port mapping.
  /// [protocol] Protocol used for the port mapping.
  const GetVirtualNodeSpecListenerPortMapping({
    required this.port,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'protocol': protocol,
    };
  }

  factory GetVirtualNodeSpecListenerPortMapping.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerPortMapping(
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}
