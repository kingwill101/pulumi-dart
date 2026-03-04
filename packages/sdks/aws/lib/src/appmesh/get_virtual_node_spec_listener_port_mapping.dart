// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerPortMapping {
  final pulumi.Input<int> port;
  final pulumi.Input<String> protocol;

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
      port: pulumi.Input.fromValue(map['port'] as int),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}
