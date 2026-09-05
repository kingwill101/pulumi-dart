// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualGatewaySpecListenerPortMapping {
  final pulumi.Input<int> port;
  final pulumi.Input<String> protocol;

  /// Creates a new [GetVirtualGatewaySpecListenerPortMapping].
  /// [port] Required.
  /// [protocol] Required.
  const GetVirtualGatewaySpecListenerPortMapping({
    required this.port,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'protocol': protocol,
    };
  }

  factory GetVirtualGatewaySpecListenerPortMapping.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerPortMapping(
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}
