// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IpSetIpSetDescriptor {
  /// Type of the IP address - `IPV4` or `IPV6`.
  final pulumi.Input<String> type;

  /// An IPv4 or IPv6 address specified via CIDR notationE.g., `192.0.2.44/32` or `1111:0000:0000:0000:0000:0000:0000:0000/64`
  final pulumi.Input<String> value;

  /// Creates a new [IpSetIpSetDescriptor].
  /// [type] Type of the IP address - `IPV4` or `IPV6`.
  /// [value] An IPv4 or IPv6 address specified via CIDR notationE.g., `192.0.2.44/32` or `1111:0000:0000:0000:0000:0000:0000:0000/64`
  IpSetIpSetDescriptor({required this.type, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type, 'value': value};
  }

  factory IpSetIpSetDescriptor.fromMap(Map<String, dynamic> map) {
    return IpSetIpSetDescriptor(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
