// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualGatewaySpecListenerPortMapping {
  /// Port used for the port mapping.
  final pulumi.Input<int> port;
  /// Protocol used for the port mapping. Valid values are `http`, `http2`, `tcp` and `grpc`.
  final pulumi.Input<String> protocol;

  /// Creates a new [VirtualGatewaySpecListenerPortMapping].
  /// [port] Port used for the port mapping.
  /// [protocol] Protocol used for the port mapping. Valid values are `http`, `http2`, `tcp` and `grpc`.
  VirtualGatewaySpecListenerPortMapping({
    required this.port,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'protocol': protocol,
    };
  }

  factory VirtualGatewaySpecListenerPortMapping.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerPortMapping(
      port: pulumi.Input.fromValue(map['port'] as int),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}

