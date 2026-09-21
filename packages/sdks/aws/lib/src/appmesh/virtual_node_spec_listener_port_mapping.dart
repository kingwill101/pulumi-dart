// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNodeSpecListenerPortMapping {
  /// Port used for the port mapping.
  final pulumi.Input<int> port;
  /// Protocol used for the port mapping. Valid values are `http`, `http2`, `tcp` and `grpc`.
  final pulumi.Input<String> protocol;

  /// Creates a new [VirtualNodeSpecListenerPortMapping].
  /// [port] Port used for the port mapping.
  /// [protocol] Protocol used for the port mapping. Valid values are `http`, `http2`, `tcp` and `grpc`.
  const VirtualNodeSpecListenerPortMapping({
    required this.port,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'protocol': protocol,
    };
  }

  factory VirtualNodeSpecListenerPortMapping.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerPortMapping(
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}
